; Auto-generated. Do not edit!


(cl:in-package kr_tracker_msgs-msg)


;//! \htmlinclude BsplineTrackerFeedback.msg.html

(cl:defclass <BsplineTrackerFeedback> (roslisp-msg-protocol:ros-message)
  ((remaining_time
    :reader remaining_time
    :initarg :remaining_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass BsplineTrackerFeedback (<BsplineTrackerFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BsplineTrackerFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BsplineTrackerFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kr_tracker_msgs-msg:<BsplineTrackerFeedback> is deprecated: use kr_tracker_msgs-msg:BsplineTrackerFeedback instead.")))

(cl:ensure-generic-function 'remaining_time-val :lambda-list '(m))
(cl:defmethod remaining_time-val ((m <BsplineTrackerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_tracker_msgs-msg:remaining_time-val is deprecated.  Use kr_tracker_msgs-msg:remaining_time instead.")
  (remaining_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BsplineTrackerFeedback>) ostream)
  "Serializes a message object of type '<BsplineTrackerFeedback>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'remaining_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BsplineTrackerFeedback>) istream)
  "Deserializes a message object of type '<BsplineTrackerFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'remaining_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BsplineTrackerFeedback>)))
  "Returns string type for a message object of type '<BsplineTrackerFeedback>"
  "kr_tracker_msgs/BsplineTrackerFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BsplineTrackerFeedback)))
  "Returns string type for a message object of type 'BsplineTrackerFeedback"
  "kr_tracker_msgs/BsplineTrackerFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BsplineTrackerFeedback>)))
  "Returns md5sum for a message object of type '<BsplineTrackerFeedback>"
  "b71b59cce98847d0bd0310eb052e8f3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BsplineTrackerFeedback)))
  "Returns md5sum for a message object of type 'BsplineTrackerFeedback"
  "b71b59cce98847d0bd0310eb052e8f3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BsplineTrackerFeedback>)))
  "Returns full string definition for message of type '<BsplineTrackerFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%float64 remaining_time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BsplineTrackerFeedback)))
  "Returns full string definition for message of type 'BsplineTrackerFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%float64 remaining_time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BsplineTrackerFeedback>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BsplineTrackerFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'BsplineTrackerFeedback
    (cl:cons ':remaining_time (remaining_time msg))
))