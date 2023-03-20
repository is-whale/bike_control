;; Auto-generated. Do not edit!


(when (boundp 'bike_core::pid_params_msg)
  (if (not (find-package "BIKE_CORE"))
    (make-package "BIKE_CORE"))
  (shadow 'pid_params_msg (find-package "BIKE_CORE")))
(unless (find-package "BIKE_CORE::PID_PARAMS_MSG")
  (make-package "BIKE_CORE::PID_PARAMS_MSG"))

(in-package "ROS")
;;//! \htmlinclude pid_params_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bike_core::pid_params_msg
  :super ros::object
  :slots (_header _p _i _d _output_limit _integrval_limit ))

(defmethod bike_core::pid_params_msg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:p __p) 0.0)
    ((:i __i) 0.0)
    ((:d __d) 0.0)
    ((:output_limit __output_limit) 0.0)
    ((:integrval_limit __integrval_limit) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _p (float __p))
   (setq _i (float __i))
   (setq _d (float __d))
   (setq _output_limit (float __output_limit))
   (setq _integrval_limit (float __integrval_limit))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:p
   (&optional __p)
   (if __p (setq _p __p)) _p)
  (:i
   (&optional __i)
   (if __i (setq _i __i)) _i)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:output_limit
   (&optional __output_limit)
   (if __output_limit (setq _output_limit __output_limit)) _output_limit)
  (:integrval_limit
   (&optional __integrval_limit)
   (if __integrval_limit (setq _integrval_limit __integrval_limit)) _integrval_limit)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _p
    4
    ;; float32 _i
    4
    ;; float32 _d
    4
    ;; float32 _output_limit
    4
    ;; float32 _integrval_limit
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _p
       (sys::poke _p (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _i
       (sys::poke _i (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _d
       (sys::poke _d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _output_limit
       (sys::poke _output_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _integrval_limit
       (sys::poke _integrval_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _p
     (setq _p (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _i
     (setq _i (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _d
     (setq _d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _output_limit
     (setq _output_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _integrval_limit
     (setq _integrval_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bike_core::pid_params_msg :md5sum-) "09e72efa8cdc37046481768f9ac21d94")
(setf (get bike_core::pid_params_msg :datatype-) "bike_core/pid_params_msg")
(setf (get bike_core::pid_params_msg :definition-)
      "std_msgs/Header header
float32 p
float32 i
float32 d
float32 output_limit
float32 integrval_limit
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



(provide :bike_core/pid_params_msg "09e72efa8cdc37046481768f9ac21d94")


