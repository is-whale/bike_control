
(cl:in-package :asdf)

(defsystem "bike_vision-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "road_obstacle_msg" :depends-on ("_package_road_obstacle_msg"))
    (:file "_package_road_obstacle_msg" :depends-on ("_package"))
  ))