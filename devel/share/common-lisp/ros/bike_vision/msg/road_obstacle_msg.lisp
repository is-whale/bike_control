; Auto-generated. Do not edit!


(cl:in-package bike_vision-msg)


;//! \htmlinclude road_obstacle_msg.msg.html

(cl:defclass <road_obstacle_msg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (num_objects
    :reader num_objects
    :initarg :num_objects
    :type cl:fixnum
    :initform 0)
   (center_x
    :reader center_x
    :initarg :center_x
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 10 :element-type 'cl:fixnum :initial-element 0))
   (center_y
    :reader center_y
    :initarg :center_y
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 10 :element-type 'cl:fixnum :initial-element 0))
   (distance
    :reader distance
    :initarg :distance
    :type (cl:vector cl:float)
   :initform (cl:make-array 10 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass road_obstacle_msg (<road_obstacle_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <road_obstacle_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'road_obstacle_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bike_vision-msg:<road_obstacle_msg> is deprecated: use bike_vision-msg:road_obstacle_msg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <road_obstacle_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_vision-msg:header-val is deprecated.  Use bike_vision-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'num_objects-val :lambda-list '(m))
(cl:defmethod num_objects-val ((m <road_obstacle_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_vision-msg:num_objects-val is deprecated.  Use bike_vision-msg:num_objects instead.")
  (num_objects m))

(cl:ensure-generic-function 'center_x-val :lambda-list '(m))
(cl:defmethod center_x-val ((m <road_obstacle_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_vision-msg:center_x-val is deprecated.  Use bike_vision-msg:center_x instead.")
  (center_x m))

(cl:ensure-generic-function 'center_y-val :lambda-list '(m))
(cl:defmethod center_y-val ((m <road_obstacle_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_vision-msg:center_y-val is deprecated.  Use bike_vision-msg:center_y instead.")
  (center_y m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <road_obstacle_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bike_vision-msg:distance-val is deprecated.  Use bike_vision-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <road_obstacle_msg>) ostream)
  "Serializes a message object of type '<road_obstacle_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_objects)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'center_x))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'center_y))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'distance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <road_obstacle_msg>) istream)
  "Deserializes a message object of type '<road_obstacle_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_objects)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'center_x) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'center_x)))
    (cl:dotimes (i 10)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'center_y) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'center_y)))
    (cl:dotimes (i 10)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'distance) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'distance)))
    (cl:dotimes (i 10)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<road_obstacle_msg>)))
  "Returns string type for a message object of type '<road_obstacle_msg>"
  "bike_vision/road_obstacle_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'road_obstacle_msg)))
  "Returns string type for a message object of type 'road_obstacle_msg"
  "bike_vision/road_obstacle_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<road_obstacle_msg>)))
  "Returns md5sum for a message object of type '<road_obstacle_msg>"
  "e903107bd222aa2e9a5ca84b2a8e152d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'road_obstacle_msg)))
  "Returns md5sum for a message object of type 'road_obstacle_msg"
  "e903107bd222aa2e9a5ca84b2a8e152d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<road_obstacle_msg>)))
  "Returns full string definition for message of type '<road_obstacle_msg>"
  (cl:format cl:nil "std_msgs/Header header~%uint8 num_objects~%uint16[10] center_x~%uint16[10] center_y~%float32[10] distance~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'road_obstacle_msg)))
  "Returns full string definition for message of type 'road_obstacle_msg"
  (cl:format cl:nil "std_msgs/Header header~%uint8 num_objects~%uint16[10] center_x~%uint16[10] center_y~%float32[10] distance~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <road_obstacle_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'center_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'center_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'distance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <road_obstacle_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'road_obstacle_msg
    (cl:cons ':header (header msg))
    (cl:cons ':num_objects (num_objects msg))
    (cl:cons ':center_x (center_x msg))
    (cl:cons ':center_y (center_y msg))
    (cl:cons ':distance (distance msg))
))
