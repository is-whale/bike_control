;; Auto-generated. Do not edit!


(when (boundp 'bike_core::odrive_motor_feedback_msg)
  (if (not (find-package "BIKE_CORE"))
    (make-package "BIKE_CORE"))
  (shadow 'odrive_motor_feedback_msg (find-package "BIKE_CORE")))
(unless (find-package "BIKE_CORE::ODRIVE_MOTOR_FEEDBACK_MSG")
  (make-package "BIKE_CORE::ODRIVE_MOTOR_FEEDBACK_MSG"))

(in-package "ROS")
;;//! \htmlinclude odrive_motor_feedback_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bike_core::odrive_motor_feedback_msg
  :super ros::object
  :slots (_header _can_id _speed _position ))

(defmethod bike_core::odrive_motor_feedback_msg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:can_id __can_id) 0)
    ((:speed __speed) 0.0)
    ((:position __position) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _can_id (round __can_id))
   (setq _speed (float __speed))
   (setq _position (float __position))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:can_id
   (&optional __can_id)
   (if __can_id (setq _can_id __can_id)) _can_id)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _can_id
    4
    ;; float32 _speed
    4
    ;; float32 _position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _can_id
       (write-long _can_id s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _can_id
     (setq _can_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bike_core::odrive_motor_feedback_msg :md5sum-) "38c3e0965abc26a062be9ceaf6afcfd0")
(setf (get bike_core::odrive_motor_feedback_msg :datatype-) "bike_core/odrive_motor_feedback_msg")
(setf (get bike_core::odrive_motor_feedback_msg :definition-)
      "std_msgs/Header header
uint32 can_id
float32 speed
float32 position
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



(provide :bike_core/odrive_motor_feedback_msg "38c3e0965abc26a062be9ceaf6afcfd0")


