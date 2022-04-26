;; Auto-generated. Do not edit!


(when (boundp 'kr_mav_msgs::PositionCommand)
  (if (not (find-package "KR_MAV_MSGS"))
    (make-package "KR_MAV_MSGS"))
  (shadow 'PositionCommand (find-package "KR_MAV_MSGS")))
(unless (find-package "KR_MAV_MSGS::POSITIONCOMMAND")
  (make-package "KR_MAV_MSGS::POSITIONCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude PositionCommand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*USE_MSG_GAINS_NONE*" (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(shadow '*USE_MSG_GAINS_NONE* (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(defconstant kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_NONE* 0)
(intern "*USE_MSG_GAINS_POSITION_X*" (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(shadow '*USE_MSG_GAINS_POSITION_X* (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(defconstant kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_POSITION_X* 1)
(intern "*USE_MSG_GAINS_POSITION_Y*" (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(shadow '*USE_MSG_GAINS_POSITION_Y* (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(defconstant kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_POSITION_Y* 2)
(intern "*USE_MSG_GAINS_POSITION_Z*" (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(shadow '*USE_MSG_GAINS_POSITION_Z* (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(defconstant kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_POSITION_Z* 4)
(intern "*USE_MSG_GAINS_POSITION_ALL*" (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(shadow '*USE_MSG_GAINS_POSITION_ALL* (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(defconstant kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_POSITION_ALL* 7)
(intern "*USE_MSG_GAINS_VELOCITY_X*" (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(shadow '*USE_MSG_GAINS_VELOCITY_X* (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(defconstant kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_VELOCITY_X* 8)
(intern "*USE_MSG_GAINS_VELOCITY_Y*" (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(shadow '*USE_MSG_GAINS_VELOCITY_Y* (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(defconstant kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_VELOCITY_Y* 16)
(intern "*USE_MSG_GAINS_VELOCITY_Z*" (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(shadow '*USE_MSG_GAINS_VELOCITY_Z* (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(defconstant kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_VELOCITY_Z* 32)
(intern "*USE_MSG_GAINS_VELOCITY_ALL*" (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(shadow '*USE_MSG_GAINS_VELOCITY_ALL* (find-package "KR_MAV_MSGS::POSITIONCOMMAND"))
(defconstant kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_VELOCITY_ALL* 56)

(defun kr_mav_msgs::PositionCommand-to-symbol (const)
  (cond
        ((= const 0) 'kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_NONE*)
        ((= const 1) 'kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_POSITION_X*)
        ((= const 2) 'kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_POSITION_Y*)
        ((= const 4) 'kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_POSITION_Z*)
        ((= const 7) 'kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_POSITION_ALL*)
        ((= const 8) 'kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_VELOCITY_X*)
        ((= const 16) 'kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_VELOCITY_Y*)
        ((= const 32) 'kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_VELOCITY_Z*)
        ((= const 56) 'kr_mav_msgs::PositionCommand::*USE_MSG_GAINS_VELOCITY_ALL*)
        (t nil)))

(defclass kr_mav_msgs::PositionCommand
  :super ros::object
  :slots (_header _position _velocity _acceleration _jerk _yaw _yaw_dot _kx _kv _use_msg_gains_flags ))

(defmethod kr_mav_msgs::PositionCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Vector3 :init))
    ((:jerk __jerk) (instance geometry_msgs::Vector3 :init))
    ((:yaw __yaw) 0.0)
    ((:yaw_dot __yaw_dot) 0.0)
    ((:kx __kx) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:kv __kv) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:use_msg_gains_flags __use_msg_gains_flags) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _jerk __jerk)
   (setq _yaw (float __yaw))
   (setq _yaw_dot (float __yaw_dot))
   (setq _kx __kx)
   (setq _kv __kv)
   (setq _use_msg_gains_flags (round __use_msg_gains_flags))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:jerk
   (&rest __jerk)
   (if (keywordp (car __jerk))
       (send* _jerk __jerk)
     (progn
       (if __jerk (setq _jerk (car __jerk)))
       _jerk)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:yaw_dot
   (&optional __yaw_dot)
   (if __yaw_dot (setq _yaw_dot __yaw_dot)) _yaw_dot)
  (:kx
   (&optional __kx)
   (if __kx (setq _kx __kx)) _kx)
  (:kv
   (&optional __kv)
   (if __kv (setq _kv __kv)) _kv)
  (:use_msg_gains_flags
   (&optional __use_msg_gains_flags)
   (if __use_msg_gains_flags (setq _use_msg_gains_flags __use_msg_gains_flags)) _use_msg_gains_flags)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _jerk
    (send _jerk :serialization-length)
    ;; float64 _yaw
    8
    ;; float64 _yaw_dot
    8
    ;; float64[3] _kx
    (* 8    3)
    ;; float64[3] _kv
    (* 8    3)
    ;; uint8 _use_msg_gains_flags
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Vector3 _jerk
       (send _jerk :serialize s)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_dot
       (sys::poke _yaw_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[3] _kx
     (dotimes (i 3)
       (sys::poke (elt _kx i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _kv
     (dotimes (i 3)
       (sys::poke (elt _kv i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8 _use_msg_gains_flags
       (write-byte _use_msg_gains_flags s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _jerk
     (send _jerk :deserialize buf ptr-) (incf ptr- (send _jerk :serialization-length))
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_dot
     (setq _yaw_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[3] _kx
   (dotimes (i (length _kx))
     (setf (elt _kx i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _kv
   (dotimes (i (length _kv))
     (setf (elt _kv i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; uint8 _use_msg_gains_flags
     (setq _use_msg_gains_flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get kr_mav_msgs::PositionCommand :md5sum-) "0311a8eaed8b83c776def91b77632ae6")
(setf (get kr_mav_msgs::PositionCommand :datatype-) "kr_mav_msgs/PositionCommand")
(setf (get kr_mav_msgs::PositionCommand :definition-)
      "Header header
geometry_msgs/Point position
geometry_msgs/Vector3 velocity
geometry_msgs/Vector3 acceleration
geometry_msgs/Vector3 jerk
float64 yaw
float64 yaw_dot
float64[3] kx
float64[3] kv

# use_msg_gains_flags: flags that can be set using the constants USE_MSG_GAINS_*
# to select which gains (kx, kv) from the message to use.  Note that by default
# the message gains are not used.
uint8 use_msg_gains_flags

uint8 USE_MSG_GAINS_NONE         = 0
uint8 USE_MSG_GAINS_POSITION_X   = 1
uint8 USE_MSG_GAINS_POSITION_Y   = 2
uint8 USE_MSG_GAINS_POSITION_Z   = 4
uint8 USE_MSG_GAINS_POSITION_ALL = 7 # sets all three of the above
uint8 USE_MSG_GAINS_VELOCITY_X   = 8
uint8 USE_MSG_GAINS_VELOCITY_Y   = 16
uint8 USE_MSG_GAINS_VELOCITY_Z   = 32
uint8 USE_MSG_GAINS_VELOCITY_ALL = 56 # sets all three of the above

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

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :kr_mav_msgs/PositionCommand "0311a8eaed8b83c776def91b77632ae6")


