; Auto-generated. Do not edit!


(cl:in-package bike_core-msg)


;//! \htmlinclude odrive_can_msg.msg.html

(cl:defclass <odrive_can_msg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bytes
    :reader bytes
    :initarg :bytes
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0))
   (data_len
    :reader data_len
    :initarg :data_len
    :type cl:fixnum
    :initform 0)
   (can_id
    :reader can_id
    :initarg :can_id
    :type cl:integer
    :initform 0))
)

(cl:defclass odrive_can_msg (<odrive_can_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <odrive_can_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'odrive_can_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bike_core-msg:<odrive_can_msg> is deprecated: use bike_core-msg:odrive_can_msg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <odrive_can_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:header-val is deprecated.  Use bike_core-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bytes-val :lambda-list '(m))
(cl:defmethod bytes-val ((m <odrive_can_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:bytes-val is deprecated.  Use bike_core-msg:bytes instead.")
  (bytes m))

(cl:ensure-generic-function 'data_len-val :lambda-list '(m))
(cl:defmethod data_len-val ((m <odrive_can_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:data_len-val is deprecated.  Use bike_core-msg:data_len instead.")
  (data_len m))

(cl:ensure-generic-function 'can_id-val :lambda-list '(m))
(cl:defmethod can_id-val ((m <odrive_can_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:can_id-val is deprecated.  Use bike_core-msg:can_id instead.")
  (can_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <odrive_can_msg>) ostream)
  "Serializes a message object of type '<odrive_can_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'bytes))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_len)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'can_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'can_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'can_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'can_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <odrive_can_msg>) istream)
  "Deserializes a message object of type '<odrive_can_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'bytes) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'bytes)))
    (cl:dotimes (i 8)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_len)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'can_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'can_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'can_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'can_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<odrive_can_msg>)))
  "Returns string type for a message object of type '<odrive_can_msg>"
  "bike_core/odrive_can_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'odrive_can_msg)))
  "Returns string type for a message object of type 'odrive_can_msg"
  "bike_core/odrive_can_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<odrive_can_msg>)))
  "Returns md5sum for a message object of type '<odrive_can_msg>"
  "88e94c1249be4512f5bc03b9ca2f7e24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'odrive_can_msg)))
  "Returns md5sum for a message object of type 'odrive_can_msg"
  "88e94c1249be4512f5bc03b9ca2f7e24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<odrive_can_msg>)))
  "Returns full string definition for message of type '<odrive_can_msg>"
  (cl:format cl:nil "std_msgs/Header header~%uint8[8] bytes~%uint8 data_len~%uint32 can_id~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'odrive_can_msg)))
  "Returns full string definition for message of type 'odrive_can_msg"
  (cl:format cl:nil "std_msgs/Header header~%uint8[8] bytes~%uint8 data_len~%uint32 can_id~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <odrive_can_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'bytes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <odrive_can_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'odrive_can_msg
    (cl:cons ':header (header msg))
    (cl:cons ':bytes (bytes msg))
    (cl:cons ':data_len (data_len msg))
    (cl:cons ':can_id (can_id msg))
))
