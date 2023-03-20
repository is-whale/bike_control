;; Auto-generated. Do not edit!


(when (boundp 'bike_core::remote_control_msg)
  (if (not (find-package "BIKE_CORE"))
    (make-package "BIKE_CORE"))
  (shadow 'remote_control_msg (find-package "BIKE_CORE")))
(unless (find-package "BIKE_CORE::REMOTE_CONTROL_MSG")
  (make-package "BIKE_CORE::REMOTE_CONTROL_MSG"))

(in-package "ROS")
;;//! \htmlinclude remote_control_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass bike_core::remote_control_msg
  :super ros::object
  :slots (_header _ch_x _s1 _s2 _mouse_x _mouse_y _mouse_z _mouse_press_left _mouse_press_right _key_value _virtual_rocker ))

(defmethod bike_core::remote_control_msg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ch_x __ch_x) (make-array 5 :initial-element 0 :element-type :integer))
    ((:s1 __s1) 0)
    ((:s2 __s2) 0)
    ((:mouse_x __mouse_x) 0)
    ((:mouse_y __mouse_y) 0)
    ((:mouse_z __mouse_z) 0)
    ((:mouse_press_left __mouse_press_left) 0)
    ((:mouse_press_right __mouse_press_right) 0)
    ((:key_value __key_value) 0)
    ((:virtual_rocker __virtual_rocker) (make-array 2 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ch_x __ch_x)
   (setq _s1 (round __s1))
   (setq _s2 (round __s2))
   (setq _mouse_x (round __mouse_x))
   (setq _mouse_y (round __mouse_y))
   (setq _mouse_z (round __mouse_z))
   (setq _mouse_press_left (round __mouse_press_left))
   (setq _mouse_press_right (round __mouse_press_right))
   (setq _key_value (round __key_value))
   (setq _virtual_rocker __virtual_rocker)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ch_x
   (&optional __ch_x)
   (if __ch_x (setq _ch_x __ch_x)) _ch_x)
  (:s1
   (&optional __s1)
   (if __s1 (setq _s1 __s1)) _s1)
  (:s2
   (&optional __s2)
   (if __s2 (setq _s2 __s2)) _s2)
  (:mouse_x
   (&optional __mouse_x)
   (if __mouse_x (setq _mouse_x __mouse_x)) _mouse_x)
  (:mouse_y
   (&optional __mouse_y)
   (if __mouse_y (setq _mouse_y __mouse_y)) _mouse_y)
  (:mouse_z
   (&optional __mouse_z)
   (if __mouse_z (setq _mouse_z __mouse_z)) _mouse_z)
  (:mouse_press_left
   (&optional __mouse_press_left)
   (if __mouse_press_left (setq _mouse_press_left __mouse_press_left)) _mouse_press_left)
  (:mouse_press_right
   (&optional __mouse_press_right)
   (if __mouse_press_right (setq _mouse_press_right __mouse_press_right)) _mouse_press_right)
  (:key_value
   (&optional __key_value)
   (if __key_value (setq _key_value __key_value)) _key_value)
  (:virtual_rocker
   (&optional __virtual_rocker)
   (if __virtual_rocker (setq _virtual_rocker __virtual_rocker)) _virtual_rocker)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16[5] _ch_x
    (* 2    5)
    ;; uint8 _s1
    1
    ;; uint8 _s2
    1
    ;; int16 _mouse_x
    2
    ;; int16 _mouse_y
    2
    ;; int16 _mouse_z
    2
    ;; uint8 _mouse_press_left
    1
    ;; uint8 _mouse_press_right
    1
    ;; uint16 _key_value
    2
    ;; int16[2] _virtual_rocker
    (* 2    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16[5] _ch_x
     (dotimes (i 5)
       (write-word (elt _ch_x i) s)
       )
     ;; uint8 _s1
       (write-byte _s1 s)
     ;; uint8 _s2
       (write-byte _s2 s)
     ;; int16 _mouse_x
       (write-word _mouse_x s)
     ;; int16 _mouse_y
       (write-word _mouse_y s)
     ;; int16 _mouse_z
       (write-word _mouse_z s)
     ;; uint8 _mouse_press_left
       (write-byte _mouse_press_left s)
     ;; uint8 _mouse_press_right
       (write-byte _mouse_press_right s)
     ;; uint16 _key_value
       (write-word _key_value s)
     ;; int16[2] _virtual_rocker
     (dotimes (i 2)
       (write-word (elt _virtual_rocker i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16[5] _ch_x
   (dotimes (i (length _ch_x))
     (setf (elt _ch_x i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint8 _s1
     (setq _s1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _s2
     (setq _s2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _mouse_x
     (setq _mouse_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _mouse_y
     (setq _mouse_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _mouse_z
     (setq _mouse_z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _mouse_press_left
     (setq _mouse_press_left (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mouse_press_right
     (setq _mouse_press_right (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _key_value
     (setq _key_value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16[2] _virtual_rocker
   (dotimes (i (length _virtual_rocker))
     (setf (elt _virtual_rocker i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get bike_core::remote_control_msg :md5sum-) "b54f566ba84898b7addc0e2d7cd838fb")
(setf (get bike_core::remote_control_msg :datatype-) "bike_core/remote_control_msg")
(setf (get bike_core::remote_control_msg :definition-)
      "std_msgs/Header header
int16[5] ch_x
uint8 s1
uint8 s2
int16 mouse_x
int16 mouse_y
int16 mouse_z
uint8 mouse_press_left
uint8 mouse_press_right
uint16 key_value
int16[2] virtual_rocker
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



(provide :bike_core/remote_control_msg "b54f566ba84898b7addc0e2d7cd838fb")


