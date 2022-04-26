;; Auto-generated. Do not edit!


(when (boundp 'kr_mav_msgs::PWMCommand)
  (if (not (find-package "KR_MAV_MSGS"))
    (make-package "KR_MAV_MSGS"))
  (shadow 'PWMCommand (find-package "KR_MAV_MSGS")))
(unless (find-package "KR_MAV_MSGS::PWMCOMMAND")
  (make-package "KR_MAV_MSGS::PWMCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude PWMCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kr_mav_msgs::PWMCommand
  :super ros::object
  :slots (_header _pwm ))

(defmethod kr_mav_msgs::PWMCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pwm __pwm) (make-array 2 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pwm __pwm)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pwm
   (&optional __pwm)
   (if __pwm (setq _pwm __pwm)) _pwm)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[2] _pwm
    (* 8    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[2] _pwm
     (dotimes (i 2)
       (sys::poke (elt _pwm i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[2] _pwm
   (dotimes (i (length _pwm))
     (setf (elt _pwm i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get kr_mav_msgs::PWMCommand :md5sum-) "eb2dd9b2c30eeae5ab3d52000198a3ea")
(setf (get kr_mav_msgs::PWMCommand :datatype-) "kr_mav_msgs/PWMCommand")
(setf (get kr_mav_msgs::PWMCommand :definition-)
      "Header header
# pwm values should be between 0 (1ms pulse width) and 1 (2ms pulse width)
float64[2] pwm

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



(provide :kr_mav_msgs/PWMCommand "eb2dd9b2c30eeae5ab3d52000198a3ea")


