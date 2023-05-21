;; Auto-generated. Do not edit!


(when (boundp 'devices::RtkMsg)
  (if (not (find-package "DEVICES"))
    (make-package "DEVICES"))
  (shadow 'RtkMsg (find-package "DEVICES")))
(unless (find-package "DEVICES::RTKMSG")
  (make-package "DEVICES::RTKMSG"))

(in-package "ROS")
;;//! \htmlinclude RtkMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass devices::RtkMsg
  :super ros::object
  :slots (_header _raw_string ))

(defmethod devices::RtkMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:raw_string __raw_string) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _raw_string (string __raw_string))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:raw_string
   (&optional __raw_string)
   (if __raw_string (setq _raw_string __raw_string)) _raw_string)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _raw_string
    4 (length _raw_string)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _raw_string
       (write-long (length _raw_string) s) (princ _raw_string s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _raw_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _raw_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get devices::RtkMsg :md5sum-) "d09cacb8395420a614d91e15f9502b9d")
(setf (get devices::RtkMsg :datatype-) "devices/RtkMsg")
(setf (get devices::RtkMsg :definition-)
      "# Message of navigation information read from the SPAN-CPT system (log INSPVAX)

# Hedaer of this ros message
# header.seq        : consecutive increasing ID
# header.stamp      : timestamp of the message
#   .sec            : seconds
#   .nsec           : nanoseconds
# header.frame_id   : name of this data
Header header

# Raw string recorded from RTK rover
string raw_string
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
# 0: no frame
# 1: global frame
string frame_id

")



(provide :devices/RtkMsg "d09cacb8395420a614d91e15f9502b9d")


