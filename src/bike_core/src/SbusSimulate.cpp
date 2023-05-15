#include "bike_core/SbusSimulate.hpp"

SbusSimulateSerial::SbusSimulateSerial() : nh_("~") {
  sbus_simulate_ser_ = std::make_shared<QSerialPort>();//SbusSimlate.h定义，应该是串口配置结构体
  InitSbusSimulateSerialPort(
      OdriveMotorConfig::getSigleInstance().servo_port_name_);//使用文件读取到的串口号进行初始化
  sub_sbus_channels_value_ = nh_.subscribe<bike_core::sbus_channels_msg>(
      "/bike_core_control_node/sbus_channel_values", 100, &SbusSimulateSerial::SubSbusNewChannelsValueCallback, this);
      //读取传输的SBUS通道值
  SbusOutputThread();//输出SBUS模拟的PWM给舵机
}
/**
 * @brief init Serial setting
 * @retval [true] success and LOG OUT
  */
bool SbusSimulateSerial::InitSbusSimulateSerialPort(
    const std::string port_name) const {
  sbus_simulate_ser_->setPortName(QString::fromStdString(port_name));
  sbus_simulate_ser_->setBaudRate(100000);
  sbus_simulate_ser_->setDataBits(QSerialPort::Data8);
  sbus_simulate_ser_->setParity(QSerialPort::EvenParity);
  sbus_simulate_ser_->setStopBits(QSerialPort::TwoStop);
  sbus_simulate_ser_->setFlowControl(QSerialPort::NoFlowControl);
  if (sbus_simulate_ser_->open(QIODevice::ReadWrite)) {
    LOG(INFO) << "Open SBUS Simulate Serial Success in: "
              << sbus_simulate_ser_->portName().toStdString();
    return true;

  } else {
    LOG(FATAL) << "Open SBUS Simulate Serial Failed In: " << port_name;
    return false;
  }
}

void SbusSimulateSerial::SbusOutputThread() {
  while (ros::ok()) {
    this->SbusSimulateOutput(16);
    ros::spinOnce();
  }
}
/**
 * @brief 打印SBUS数据
  */
void SbusSimulateSerial::setOutputValues(
    const std::array<uint16_t, 16> &value) {
  for (size_t i{0}; i < values_.size(); i++) {
    values_[i] = value[i];
  }
  LOG(INFO) << "Update SBUS Output Data Success."
            << "Now is: \n"
            << std::for_each(
                   values_.begin(), values_.end(),
                   [](const int16_t &n) { std::cout << " " << n << " "; });
  std::cout << std::endl;
}
/**
 * @brief 输出SBUS数据到电机
  */
const qint16 SbusSimulateSerial::SbusSimulateOutput(
    const uint16_t channels_num) const {
  int i = 0;
  uint16_t value = 0;
  uint8_t byteindex = 1;
  uint8_t offset = 0;
  uint8_t oframe[25] = {0};
  memset(oframe, 0, 25);
  oframe[0] = 0x0f;
  oframe[24] = 0x00;

  for (i = 0; (i < channels_num) && (i < 16); ++i) {
    value = (unsigned short)(((values_[i] - SBUS_SCALE_OFFSET) /
                              SBUS_SCALE_FACTOR) +
                             .5f);
    if (value > 0x07ff) {
      value = 0x07ff;
    }

    while (offset >= 8) {
      ++byteindex;
      offset -= 8;
    }

    oframe[byteindex] |= (value << (offset)) & 0xff;
    oframe[byteindex + 1] |= (value >> (8 - offset)) & 0xff;
    oframe[byteindex + 2] |= (value >> (16 - offset)) & 0xff;
    offset += 11;
  }
  qint16 write_len = sbus_simulate_ser_->write((const char *)oframe, 25);
  LOG_IF(ERROR, write_len < 0)
      << "Sbus Simulate Output Error, Write Len: " << write_len;
  sbus_simulate_ser_->waitForBytesWritten(1);
  QThread::msleep(6);
}
