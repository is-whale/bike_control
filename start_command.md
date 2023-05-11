1.启动ros_core

source ./devel/setup.zsh
roscore

2.启动can
source ./devel/setup.zsh
sudo ip link set can0 up type can bitrate 250000
rosrun bike_core can_send_receive_node
  
4.启动遥控器
#在文件中修改usb名保存
/home/hll/bike_ws/src/bike-xuan/bike_core/params/odrive_motor_config.yaml
给串口权限

source ./devel/setup.zsh
sudo chmod 777 /dev/ttyUSB1
rosrun bike_core parser_remote_data_node

#查看遥控器话题
source ./devel/setup.zsh
rostopic echo /parser_remote_data_node/remote_ctrl_data

5.启动舵机
在文件中修改usb名保存
/home/hll/bike_ws/src/bike-xuan/bike_core/params/odrive_motor_config.yaml

source ./devel/setup.zsh
sudo chmod 777 /dev/ttyUSB0
rosrun bike_core sbus_simulate_node
6.启动IMU
在文件中修改usb名要编译
/home/hll/bike_ws/src/bike-xuan/

imu_ch100/serial_imu/src/serial_imu.cpp

source ./devel/setup.zsh
sudo chmod 777 /dev/ttyUSB0
roslaunch imu_launch imu_msg.launch

7.平衡
source ./devel/setup.zsh
rosrun bike_core bike_xuan_core_control_node

查看有几个串口
ls /dev/ttyUSB*


