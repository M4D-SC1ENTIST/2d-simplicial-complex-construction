;; Auto-generated. Do not edit!


(when (boundp 'kr_mav_msgs::MotorRPM)
  (if (not (find-package "KR_MAV_MSGS"))
    (make-package "KR_MAV_MSGS"))
  (shadow 'MotorRPM (find-package "KR_MAV_MSGS")))
(unless (find-package "KR_MAV_MSGS::MOTORRPM")
  (make-package "KR_MAV_MSGS::MOTORRPM"))

(in-package "ROS")
;;//! \htmlinclude MotorRPM.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kr_mav_msgs::MotorRPM
  :super ros::object
  :slots (_header _motor_count _rpm ))

(defmethod kr_mav_msgs::MotorRPM
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:motor_count __motor_count) 0)
    ((:rpm __rpm) (make-array 8 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _motor_count (round __motor_count))
   (setq _rpm __rpm)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:motor_count
   (&optional __motor_count)
   (if __motor_count (setq _motor_count __motor_count)) _motor_count)
  (:rpm
   (&optional __rpm)
   (if __rpm (setq _rpm __rpm)) _rpm)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _motor_count
    1
    ;; int16[8] _rpm
    (* 2    8)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _motor_count
       (write-byte _motor_count s)
     ;; int16[8] _rpm
     (dotimes (i 8)
       (write-word (elt _rpm i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _motor_count
     (setq _motor_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16[8] _rpm
   (dotimes (i (length _rpm))
     (setf (elt _rpm i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get kr_mav_msgs::MotorRPM :md5sum-) "aa0b8f1e09aa084c2f05fdb94e7b972e")
(setf (get kr_mav_msgs::MotorRPM :datatype-) "kr_mav_msgs/MotorRPM")
(setf (get kr_mav_msgs::MotorRPM :definition-)
      "Header header
uint8 motor_count
int16[8] rpm

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



(provide :kr_mav_msgs/MotorRPM "aa0b8f1e09aa084c2f05fdb94e7b972e")


