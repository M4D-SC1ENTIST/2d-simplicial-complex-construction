; Auto-generated. Do not edit!


(cl:in-package kr_mav_msgs-msg)


;//! \htmlinclude PositionCommand.msg.html

(cl:defclass <PositionCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (jerk
    :reader jerk
    :initarg :jerk
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (yaw_dot
    :reader yaw_dot
    :initarg :yaw_dot
    :type cl:float
    :initform 0.0)
   (kx
    :reader kx
    :initarg :kx
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (kv
    :reader kv
    :initarg :kv
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (use_msg_gains_flags
    :reader use_msg_gains_flags
    :initarg :use_msg_gains_flags
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PositionCommand (<PositionCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kr_mav_msgs-msg:<PositionCommand> is deprecated: use kr_mav_msgs-msg:PositionCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PositionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_msgs-msg:header-val is deprecated.  Use kr_mav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PositionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_msgs-msg:position-val is deprecated.  Use kr_mav_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <PositionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_msgs-msg:velocity-val is deprecated.  Use kr_mav_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <PositionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_msgs-msg:acceleration-val is deprecated.  Use kr_mav_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'jerk-val :lambda-list '(m))
(cl:defmethod jerk-val ((m <PositionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_msgs-msg:jerk-val is deprecated.  Use kr_mav_msgs-msg:jerk instead.")
  (jerk m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <PositionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_msgs-msg:yaw-val is deprecated.  Use kr_mav_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'yaw_dot-val :lambda-list '(m))
(cl:defmethod yaw_dot-val ((m <PositionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_msgs-msg:yaw_dot-val is deprecated.  Use kr_mav_msgs-msg:yaw_dot instead.")
  (yaw_dot m))

(cl:ensure-generic-function 'kx-val :lambda-list '(m))
(cl:defmethod kx-val ((m <PositionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_msgs-msg:kx-val is deprecated.  Use kr_mav_msgs-msg:kx instead.")
  (kx m))

(cl:ensure-generic-function 'kv-val :lambda-list '(m))
(cl:defmethod kv-val ((m <PositionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_msgs-msg:kv-val is deprecated.  Use kr_mav_msgs-msg:kv instead.")
  (kv m))

(cl:ensure-generic-function 'use_msg_gains_flags-val :lambda-list '(m))
(cl:defmethod use_msg_gains_flags-val ((m <PositionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_msgs-msg:use_msg_gains_flags-val is deprecated.  Use kr_mav_msgs-msg:use_msg_gains_flags instead.")
  (use_msg_gains_flags m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PositionCommand>)))
    "Constants for message type '<PositionCommand>"
  '((:USE_MSG_GAINS_NONE . 0)
    (:USE_MSG_GAINS_POSITION_X . 1)
    (:USE_MSG_GAINS_POSITION_Y . 2)
    (:USE_MSG_GAINS_POSITION_Z . 4)
    (:USE_MSG_GAINS_POSITION_ALL . 7)
    (:USE_MSG_GAINS_VELOCITY_X . 8)
    (:USE_MSG_GAINS_VELOCITY_Y . 16)
    (:USE_MSG_GAINS_VELOCITY_Z . 32)
    (:USE_MSG_GAINS_VELOCITY_ALL . 56))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PositionCommand)))
    "Constants for message type 'PositionCommand"
  '((:USE_MSG_GAINS_NONE . 0)
    (:USE_MSG_GAINS_POSITION_X . 1)
    (:USE_MSG_GAINS_POSITION_Y . 2)
    (:USE_MSG_GAINS_POSITION_Z . 4)
    (:USE_MSG_GAINS_POSITION_ALL . 7)
    (:USE_MSG_GAINS_VELOCITY_X . 8)
    (:USE_MSG_GAINS_VELOCITY_Y . 16)
    (:USE_MSG_GAINS_VELOCITY_Z . 32)
    (:USE_MSG_GAINS_VELOCITY_ALL . 56))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionCommand>) ostream)
  "Serializes a message object of type '<PositionCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'jerk) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_dot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'kx))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'kv))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'use_msg_gains_flags)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionCommand>) istream)
  "Deserializes a message object of type '<PositionCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'jerk) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_dot) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'kx) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'kx)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'kv) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'kv)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'use_msg_gains_flags)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionCommand>)))
  "Returns string type for a message object of type '<PositionCommand>"
  "kr_mav_msgs/PositionCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionCommand)))
  "Returns string type for a message object of type 'PositionCommand"
  "kr_mav_msgs/PositionCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionCommand>)))
  "Returns md5sum for a message object of type '<PositionCommand>"
  "0311a8eaed8b83c776def91b77632ae6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionCommand)))
  "Returns md5sum for a message object of type 'PositionCommand"
  "0311a8eaed8b83c776def91b77632ae6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionCommand>)))
  "Returns full string definition for message of type '<PositionCommand>"
  (cl:format cl:nil "Header header~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 jerk~%float64 yaw~%float64 yaw_dot~%float64[3] kx~%float64[3] kv~%~%# use_msg_gains_flags: flags that can be set using the constants USE_MSG_GAINS_*~%# to select which gains (kx, kv) from the message to use.  Note that by default~%# the message gains are not used.~%uint8 use_msg_gains_flags~%~%uint8 USE_MSG_GAINS_NONE         = 0~%uint8 USE_MSG_GAINS_POSITION_X   = 1~%uint8 USE_MSG_GAINS_POSITION_Y   = 2~%uint8 USE_MSG_GAINS_POSITION_Z   = 4~%uint8 USE_MSG_GAINS_POSITION_ALL = 7 # sets all three of the above~%uint8 USE_MSG_GAINS_VELOCITY_X   = 8~%uint8 USE_MSG_GAINS_VELOCITY_Y   = 16~%uint8 USE_MSG_GAINS_VELOCITY_Z   = 32~%uint8 USE_MSG_GAINS_VELOCITY_ALL = 56 # sets all three of the above~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionCommand)))
  "Returns full string definition for message of type 'PositionCommand"
  (cl:format cl:nil "Header header~%geometry_msgs/Point position~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 jerk~%float64 yaw~%float64 yaw_dot~%float64[3] kx~%float64[3] kv~%~%# use_msg_gains_flags: flags that can be set using the constants USE_MSG_GAINS_*~%# to select which gains (kx, kv) from the message to use.  Note that by default~%# the message gains are not used.~%uint8 use_msg_gains_flags~%~%uint8 USE_MSG_GAINS_NONE         = 0~%uint8 USE_MSG_GAINS_POSITION_X   = 1~%uint8 USE_MSG_GAINS_POSITION_Y   = 2~%uint8 USE_MSG_GAINS_POSITION_Z   = 4~%uint8 USE_MSG_GAINS_POSITION_ALL = 7 # sets all three of the above~%uint8 USE_MSG_GAINS_VELOCITY_X   = 8~%uint8 USE_MSG_GAINS_VELOCITY_Y   = 16~%uint8 USE_MSG_GAINS_VELOCITY_Z   = 32~%uint8 USE_MSG_GAINS_VELOCITY_ALL = 56 # sets all three of the above~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'jerk))
     8
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'kx) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'kv) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionCommand
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':jerk (jerk msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':yaw_dot (yaw_dot msg))
    (cl:cons ':kx (kx msg))
    (cl:cons ':kv (kv msg))
    (cl:cons ':use_msg_gains_flags (use_msg_gains_flags msg))
))
