;; Auto-generated. Do not edit!


(when (boundp 'bike_vision::road_obstacle_msg)
  (if (not (find-package "BIKE_VISION"))
    (make-package "BIKE_VISION"))
  (shadow 'road_obstacle_msg (find-package "BIKE_VISION")))
(unless (find-package "BIKE_VISION::ROAD_OBSTACLE_MSG")
  (make-package "BIKE_VISION::ROAD_OBSTACLE_MSG"))

(in-package "ROS")
;;//! \htmlinclude road_obstacle_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bike_vision::road_obstacle_msg
  :super ros::object
  :slots (_header _num_objects _center_x _center_y _distance ))

(defmethod bike_vision::road_obstacle_msg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:num_objects __num_objects) 0)
    ((:center_x __center_x) (make-array 10 :initial-element 0 :element-type :integer))
    ((:center_y __center_y) (make-array 10 :initial-element 0 :element-type :integer))
    ((:distance __distance) (make-array 10 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _num_objects (round __num_objects))
   (setq _center_x __center_x)
   (setq _center_y __center_y)
   (setq _distance __distance)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:num_objects
   (&optional __num_objects)
   (if __num_objects (setq _num_objects __num_objects)) _num_objects)
  (:center_x
   (&optional __center_x)
   (if __center_x (setq _center_x __center_x)) _center_x)
  (:center_y
   (&optional __center_y)
   (if __center_y (setq _center_y __center_y)) _center_y)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _num_objects
    1
    ;; uint16[10] _center_x
    (* 2    10)
    ;; uint16[10] _center_y
    (* 2    10)
    ;; float32[10] _distance
    (* 4    10)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _num_objects
       (write-byte _num_objects s)
     ;; uint16[10] _center_x
     (dotimes (i 10)
       (write-word (elt _center_x i) s)
       )
     ;; uint16[10] _center_y
     (dotimes (i 10)
       (write-word (elt _center_y i) s)
       )
     ;; float32[10] _distance
     (dotimes (i 10)
       (sys::poke (elt _distance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _num_objects
     (setq _num_objects (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16[10] _center_x
   (dotimes (i (length _center_x))
     (setf (elt _center_x i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint16[10] _center_y
   (dotimes (i (length _center_y))
     (setf (elt _center_y i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; float32[10] _distance
   (dotimes (i (length _distance))
     (setf (elt _distance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get bike_vision::road_obstacle_msg :md5sum-) "e903107bd222aa2e9a5ca84b2a8e152d")
(setf (get bike_vision::road_obstacle_msg :datatype-) "bike_vision/road_obstacle_msg")
(setf (get bike_vision::road_obstacle_msg :definition-)
      "std_msgs/Header header
uint8 num_objects
uint16[10] center_x
uint16[10] center_y
float32[10] distance
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :bike_vision/road_obstacle_msg "e903107bd222aa2e9a5ca84b2a8e152d")


