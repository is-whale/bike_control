;; Auto-generated. Do not edit!


(when (boundp 'bike_core::odrive_can_msg)
  (if (not (find-package "BIKE_CORE"))
    (make-package "BIKE_CORE"))
  (shadow 'odrive_can_msg (find-package "BIKE_CORE")))
(unless (find-package "BIKE_CORE::ODRIVE_CAN_MSG")
  (make-package "BIKE_CORE::ODRIVE_CAN_MSG"))

(in-package "ROS")
;;//! \htmlinclude odrive_can_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bike_core::odrive_can_msg
  :super ros::object
  :slots (_header _bytes _data_len _can_id ))

(defmethod bike_core::odrive_can_msg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:bytes __bytes) (make-array 8 :initial-element 0 :element-type :char))
    ((:data_len __data_len) 0)
    ((:can_id __can_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _bytes __bytes)
   (setq _data_len (round __data_len))
   (setq _can_id (round __can_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:bytes
   (&optional __bytes)
   (if __bytes (setq _bytes __bytes)) _bytes)
  (:data_len
   (&optional __data_len)
   (if __data_len (setq _data_len __data_len)) _data_len)
  (:can_id
   (&optional __can_id)
   (if __can_id (setq _can_id __can_id)) _can_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[8] _bytes
    (* 1    8)
    ;; uint8 _data_len
    1
    ;; uint32 _can_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[8] _bytes
     (princ _bytes s)
     ;; uint8 _data_len
       (write-byte _data_len s)
     ;; uint32 _can_id
       (write-long _can_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[8] _bytes
   (setq _bytes (make-array 8 :element-type :char))
   (replace _bytes buf :start2 ptr-) (incf ptr- 8)
   ;; uint8 _data_len
     (setq _data_len (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _can_id
     (setq _can_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bike_core::odrive_can_msg :md5sum-) "88e94c1249be4512f5bc03b9ca2f7e24")
(setf (get bike_core::odrive_can_msg :datatype-) "bike_core/odrive_can_msg")
(setf (get bike_core::odrive_can_msg :definition-)
      "std_msgs/Header header
uint8[8] bytes
uint8 data_len
uint32 can_id
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



(provide :bike_core/odrive_can_msg "88e94c1249be4512f5bc03b9ca2f7e24")


