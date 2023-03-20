
(cl:in-package :asdf)

(defsystem "bike_core-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "odrive_can_msg" :depends-on ("_package_odrive_can_msg"))
    (:file "_package_odrive_can_msg" :depends-on ("_package"))
    (:file "odrive_motor_feedback_msg" :depends-on ("_package_odrive_motor_feedback_msg"))
    (:file "_package_odrive_motor_feedback_msg" :depends-on ("_package"))
    (:file "pid_params_msg" :depends-on ("_package_pid_params_msg"))
    (:file "_package_pid_params_msg" :depends-on ("_package"))
    (:file "remote_control_msg" :depends-on ("_package_remote_control_msg"))
    (:file "_package_remote_control_msg" :depends-on ("_package"))
    (:file "sbus_channels_msg" :depends-on ("_package_sbus_channels_msg"))
    (:file "_package_sbus_channels_msg" :depends-on ("_package"))
  ))