; Auto-generated. Do not edit!


(cl:in-package bike_core-msg)


;//! \htmlinclude remote_control_msg.msg.html

(cl:defclass <remote_control_msg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ch_x
    :reader ch_x
    :initarg :ch_x
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 5 :element-type 'cl:fixnum :initial-element 0))
   (s1
    :reader s1
    :initarg :s1
    :type cl:fixnum
    :initform 0)
   (s2
    :reader s2
    :initarg :s2
    :type cl:fixnum
    :initform 0)
   (mouse_x
    :reader mouse_x
    :initarg :mouse_x
    :type cl:fixnum
    :initform 0)
   (mouse_y
    :reader mouse_y
    :initarg :mouse_y
    :type cl:fixnum
    :initform 0)
   (mouse_z
    :reader mouse_z
    :initarg :mouse_z
    :type cl:fixnum
    :initform 0)
   (mouse_press_left
    :reader mouse_press_left
    :initarg :mouse_press_left
    :type cl:fixnum
    :initform 0)
   (mouse_press_right
    :reader mouse_press_right
    :initarg :mouse_press_right
    :type cl:fixnum
    :initform 0)
   (key_value
    :reader key_value
    :initarg :key_value
    :type cl:fixnum
    :initform 0)
   (virtual_rocker
    :reader virtual_rocker
    :initarg :virtual_rocker
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass remote_control_msg (<remote_control_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <remote_control_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'remote_control_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bike_core-msg:<remote_control_msg> is deprecated: use bike_core-msg:remote_control_msg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <remote_control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:header-val is deprecated.  Use bike_core-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ch_x-val :lambda-list '(m))
(cl:defmethod ch_x-val ((m <remote_control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:ch_x-val is deprecated.  Use bike_core-msg:ch_x instead.")
  (ch_x m))

(cl:ensure-generic-function 's1-val :lambda-list '(m))
(cl:defmethod s1-val ((m <remote_control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:s1-val is deprecated.  Use bike_core-msg:s1 instead.")
  (s1 m))

(cl:ensure-generic-function 's2-val :lambda-list '(m))
(cl:defmethod s2-val ((m <remote_control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:s2-val is deprecated.  Use bike_core-msg:s2 instead.")
  (s2 m))

(cl:ensure-generic-function 'mouse_x-val :lambda-list '(m))
(cl:defmethod mouse_x-val ((m <remote_control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:mouse_x-val is deprecated.  Use bike_core-msg:mouse_x instead.")
  (mouse_x m))

(cl:ensure-generic-function 'mouse_y-val :lambda-list '(m))
(cl:defmethod mouse_y-val ((m <remote_control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:mouse_y-val is deprecated.  Use bike_core-msg:mouse_y instead.")
  (mouse_y m))

(cl:ensure-generic-function 'mouse_z-val :lambda-list '(m))
(cl:defmethod mouse_z-val ((m <remote_control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:mouse_z-val is deprecated.  Use bike_core-msg:mouse_z instead.")
  (mouse_z m))

(cl:ensure-generic-function 'mouse_press_left-val :lambda-list '(m))
(cl:defmethod mouse_press_left-val ((m <remote_control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:mouse_press_left-val is deprecated.  Use bike_core-msg:mouse_press_left instead.")
  (mouse_press_left m))

(cl:ensure-generic-function 'mouse_press_right-val :lambda-list '(m))
(cl:defmethod mouse_press_right-val ((m <remote_control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:mouse_press_right-val is deprecated.  Use bike_core-msg:mouse_press_right instead.")
  (mouse_press_right m))

(cl:ensure-generic-function 'key_value-val :lambda-list '(m))
(cl:defmethod key_value-val ((m <remote_control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:key_value-val is deprecated.  Use bike_core-msg:key_value instead.")
  (key_value m))

(cl:ensure-generic-function 'virtual_rocker-val :lambda-list '(m))
(cl:defmethod virtual_rocker-val ((m <remote_control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:virtual_rocker-val is deprecated.  Use bike_core-msg:virtual_rocker instead.")
  (virtual_rocker m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <remote_control_msg>) ostream)
  "Serializes a message object of type '<remote_control_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'ch_x))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 's1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 's2)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mouse_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mouse_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mouse_z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mouse_press_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mouse_press_right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key_value)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'virtual_rocker))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <remote_control_msg>) istream)
  "Deserializes a message object of type '<remote_control_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'ch_x) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'ch_x)))
    (cl:dotimes (i 5)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 's1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 's2)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mouse_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mouse_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mouse_z) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mouse_press_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mouse_press_right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key_value)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'virtual_rocker) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'virtual_rocker)))
    (cl:dotimes (i 2)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<remote_control_msg>)))
  "Returns string type for a message object of type '<remote_control_msg>"
  "bike_core/remote_control_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'remote_control_msg)))
  "Returns string type for a message object of type 'remote_control_msg"
  "bike_core/remote_control_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<remote_control_msg>)))
  "Returns md5sum for a message object of type '<remote_control_msg>"
  "b54f566ba84898b7addc0e2d7cd838fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'remote_control_msg)))
  "Returns md5sum for a message object of type 'remote_control_msg"
  "b54f566ba84898b7addc0e2d7cd838fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<remote_control_msg>)))
  "Returns full string definition for message of type '<remote_control_msg>"
  (cl:format cl:nil "std_msgs/Header header~%int16[5] ch_x~%uint8 s1~%uint8 s2~%int16 mouse_x~%int16 mouse_y~%int16 mouse_z~%uint8 mouse_press_left~%uint8 mouse_press_right~%uint16 key_value~%int16[2] virtual_rocker~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'remote_control_msg)))
  "Returns full string definition for message of type 'remote_control_msg"
  (cl:format cl:nil "std_msgs/Header header~%int16[5] ch_x~%uint8 s1~%uint8 s2~%int16 mouse_x~%int16 mouse_y~%int16 mouse_z~%uint8 mouse_press_left~%uint8 mouse_press_right~%uint16 key_value~%int16[2] virtual_rocker~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <remote_control_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ch_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     1
     1
     2
     2
     2
     1
     1
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'virtual_rocker) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <remote_control_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'remote_control_msg
    (cl:cons ':header (header msg))
    (cl:cons ':ch_x (ch_x msg))
    (cl:cons ':s1 (s1 msg))
    (cl:cons ':s2 (s2 msg))
    (cl:cons ':mouse_x (mouse_x msg))
    (cl:cons ':mouse_y (mouse_y msg))
    (cl:cons ':mouse_z (mouse_z msg))
    (cl:cons ':mouse_press_left (mouse_press_left msg))
    (cl:cons ':mouse_press_right (mouse_press_right msg))
    (cl:cons ':key_value (key_value msg))
    (cl:cons ':virtual_rocker (virtual_rocker msg))
))
