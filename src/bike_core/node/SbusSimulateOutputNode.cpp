#include "bike_core/SbusSimulate.hpp"
#include "qapplication.h"

void InitGlog() {
  //日志系统输出测试
  google::InitGoogleLogging("TestServoControl");
  google::SetLogFilenameExtension("log_");
  google::SetLogDestination(google::INFO, "log/");
  //日志输出设置
  FLAGS_stderrthreshold = google::INFO;
  FLAGS_colorlogtostderr = true;
  FLAGS_max_log_size = 1024;
  FLAGS_stop_logging_if_full_disk = true;
}
int main(int argc, char** argv) {
  QApplication app(argc, argv);
  InitGlog();//调用日志初始化函数
  ros::init(argc, argv, "subs_simulate_node");//ros节点初始化
  SbusSimulateSerial sbus_simu_ser;//实例化类
  return 0;
}
