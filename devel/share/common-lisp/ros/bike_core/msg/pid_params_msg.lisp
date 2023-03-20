; Auto-generated. Do not edit!


(cl:in-package bike_core-msg)


;//! \htmlinclude pid_params_msg.msg.html

(cl:defclass <pid_params_msg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (p
    :reader p
    :initarg :p
    :type cl:float
    :initform 0.0)
   (i
    :reader i
    :initarg :i
    :type cl:float
    :initform 0.0)
   (d
    :reader d
    :initarg :d
    :type cl:float
    :initform 0.0)
   (output_limit
    :reader output_limit
    :initarg :output_limit
    :type cl:float
    :initform 0.0)
   (integrval_limit
    :reader integrval_limit
    :initarg :integrval_limit
    :type cl:float
    :initform 0.0))
)

(cl:defclass pid_params_msg (<pid_params_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pid_params_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pid_params_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bike_core-msg:<pid_params_msg> is deprecated: use bike_core-msg:pid_params_msg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <pid_params_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:header-val is deprecated.  Use bike_core-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <pid_params_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:p-val is deprecated.  Use bike_core-msg:p instead.")
  (p m))

(cl:ensure-generic-function 'i-val :lambda-list '(m))
(cl:defmethod i-val ((m <pid_params_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:i-val is deprecated.  Use bike_core-msg:i instead.")
  (i m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <pid_params_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:d-val is deprecated.  Use bike_core-msg:d instead.")
  (d m))

(cl:ensure-generic-function 'output_limit-val :lambda-list '(m))
(cl:defmethod output_limit-val ((m <pid_params_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:output_limit-val is deprecated.  Use bike_core-msg:output_limit instead.")
  (output_limit m))

(cl:ensure-generic-function 'integrval_limit-val :lambda-list '(m))
(cl:defmethod integrval_limit-val ((m <pid_params_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_core-msg:integrval_limit-val is deprecated.  Use bike_core-msg:integrval_limit instead.")
  (integrval_limit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pid_params_msg>) ostream)
  "Serializes a message object of type '<pid_params_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'p))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'i))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'output_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'integrval_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pid_params_msg>) istream)
  "Deserializes a message object of type '<pid_params_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'i) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'output_limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'integrval_limit) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pid_params_msg>)))
  "Returns string type for a message object of type '<pid_params_msg>"
  "bike_core/pid_params_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pid_params_msg)))
  "Returns string type for a message object of type 'pid_params_msg"
  "bike_core/pid_params_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pid_params_msg>)))
  "Returns md5sum for a message object of type '<pid_params_msg>"
  "09e72efa8cdc37046481768f9ac21d94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pid_params_msg)))
  "Returns md5sum for a message object of type 'pid_params_msg"
  "09e72efa8cdc37046481768f9ac21d94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pid_params_msg>)))
  "Returns full string definition for message of type '<pid_params_msg>"
  (cl:format cl:nil "std_msgs/Header header~%float32 p~%float32 i~%float32 d~%float32 output_limit~%float32 integrval_limit~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pid_params_msg)))
  "Returns full string definition for message of type 'pid_params_msg"
  (cl:format cl:nil "std_msgs/Header header~%float32 p~%float32 i~%float32 d~%float32 output_limit~%float32 integrval_limit~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pid_params_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pid_params_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'pid_params_msg
    (cl:cons ':header (header msg))
    (cl:cons ':p (p msg))
    (cl:cons ':i (i msg))
    (cl:cons ':d (d msg))
    (cl:cons ':output_limit (output_limit msg))
    (cl:cons ':integrval_limit (integrval_limit msg))
))
