; Auto-generated. Do not edit!


(cl:in-package kr_mav_msgs-msg)


;//! \htmlinclude MotorRPM.msg.html

(cl:defclass <MotorRPM> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (motor_count
    :reader motor_count
    :initarg :motor_count
    :type cl:fixnum
    :initform 0)
   (rpm
    :reader rpm
    :initarg :rpm
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass MotorRPM (<MotorRPM>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorRPM>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorRPM)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kr_mav_msgs-msg:<MotorRPM> is deprecated: use kr_mav_msgs-msg:MotorRPM instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MotorRPM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_msgs-msg:header-val is deprecated.  Use kr_mav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'motor_count-val :lambda-list '(m))
(cl:defmethod motor_count-val ((m <MotorRPM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_msgs-msg:motor_count-val is deprecated.  Use kr_mav_msgs-msg:motor_count instead.")
  (motor_count m))

(cl:ensure-generic-function 'rpm-val :lambda-list '(m))
(cl:defmethod rpm-val ((m <MotorRPM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_msgs-msg:rpm-val is deprecated.  Use kr_mav_msgs-msg:rpm instead.")
  (rpm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorRPM>) ostream)
  "Serializes a message object of type '<MotorRPM>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_count)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'rpm))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorRPM>) istream)
  "Deserializes a message object of type '<MotorRPM>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_count)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rpm) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'rpm)))
    (cl:dotimes (i 8)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorRPM>)))
  "Returns string type for a message object of type '<MotorRPM>"
  "kr_mav_msgs/MotorRPM")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorRPM)))
  "Returns string type for a message object of type 'MotorRPM"
  "kr_mav_msgs/MotorRPM")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorRPM>)))
  "Returns md5sum for a message object of type '<MotorRPM>"
  "aa0b8f1e09aa084c2f05fdb94e7b972e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorRPM)))
  "Returns md5sum for a message object of type 'MotorRPM"
  "aa0b8f1e09aa084c2f05fdb94e7b972e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorRPM>)))
  "Returns full string definition for message of type '<MotorRPM>"
  (cl:format cl:nil "Header header~%uint8 motor_count~%int16[8] rpm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorRPM)))
  "Returns full string definition for message of type 'MotorRPM"
  (cl:format cl:nil "Header header~%uint8 motor_count~%int16[8] rpm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorRPM>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rpm) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorRPM>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorRPM
    (cl:cons ':header (header msg))
    (cl:cons ':motor_count (motor_count msg))
    (cl:cons ':rpm (rpm msg))
))
