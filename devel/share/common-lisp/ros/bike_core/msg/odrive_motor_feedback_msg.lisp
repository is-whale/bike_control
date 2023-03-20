; Auto-generated. Do not edit!


(cl:in-package bike_core-msg)


;//! \htmlinclude odrive_motor_feedback_msg.msg.html

(cl:defclass <odrive_motor_feedback_msg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (can_id
    :reader can_id
    :initarg :can_id
    :type cl:integer
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0))
)

(cl:defclass odrive_motor_feedback_msg (<odrive_motor_feedback_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <odrive_motor_feedback_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'odrive_motor_feedback_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bike_core-msg:<odrive_motor_feedback_msg> is deprecated: use bike_core-msg:odrive_motor_feedback_msg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <odrive_motor_feedback_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:header-val is deprecated.  Use bike_core-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'can_id-val :lambda-list '(m))
(cl:defmethod can_id-val ((m <odrive_motor_feedback_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:can_id-val is deprecated.  Use bike_core-msg:can_id instead.")
  (can_id m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <odrive_motor_feedback_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:speed-val is deprecated.  Use bike_core-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <odrive_motor_feedback_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:position-val is deprecated.  Use bike_core-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <odrive_motor_feedback_msg>) ostream)
  "Serializes a message object of type '<odrive_motor_feedback_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'can_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'can_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'can_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'can_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <odrive_motor_feedback_msg>) istream)
  "Deserializes a message object of type '<odrive_motor_feedback_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'can_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'can_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'can_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'can_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<odrive_motor_feedback_msg>)))
  "Returns string type for a message object of type '<odrive_motor_feedback_msg>"
  "bike_core/odrive_motor_feedback_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'odrive_motor_feedback_msg)))
  "Returns string type for a message object of type 'odrive_motor_feedback_msg"
  "bike_core/odrive_motor_feedback_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<odrive_motor_feedback_msg>)))
  "Returns md5sum for a message object of type '<odrive_motor_feedback_msg>"
  "38c3e0965abc26a062be9ceaf6afcfd0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'odrive_motor_feedback_msg)))
  "Returns md5sum for a message object of type 'odrive_motor_feedback_msg"
  "38c3e0965abc26a062be9ceaf6afcfd0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<odrive_motor_feedback_msg>)))
  "Returns full string definition for message of type '<odrive_motor_feedback_msg>"
  (cl:format cl:nil "std_msgs/Header header~%uint32 can_id~%float32 speed~%float32 position~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'odrive_motor_feedback_msg)))
  "Returns full string definition for message of type 'odrive_motor_feedback_msg"
  (cl:format cl:nil "std_msgs/Header header~%uint32 can_id~%float32 speed~%float32 position~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <odrive_motor_feedback_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <odrive_motor_feedback_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'odrive_motor_feedback_msg
    (cl:cons ':header (header msg))
    (cl:cons ':can_id (can_id msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':position (position msg))
))
