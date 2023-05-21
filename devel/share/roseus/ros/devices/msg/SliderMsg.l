;; Auto-generated. Do not edit!


(when (boundp 'devices::SliderMsg)
  (if (not (find-package "DEVICES"))
    (make-package "DEVICES"))
  (shadow 'SliderMsg (find-package "DEVICES")))
(unless (find-package "DEVICES::SLIDERMSG")
  (make-package "DEVICES::SLIDERMSG"))

(in-package "ROS")
;;//! \htmlinclude SliderMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass devices::SliderMsg
  :super ros::object
  :slots (_header _current_position _set_position ))

(defmethod devices::SliderMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:current_position __current_position) 0.0)
    ((:set_position __set_position) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _current_position (float __current_position))
   (setq _set_position (float __set_position))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:current_position
   (&optional __current_position)
   (if __current_position (setq _current_position __current_position)) _current_position)
  (:set_position
   (&optional __set_position)
   (if __set_position (setq _set_position __set_position)) _set_position)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _current_position
    8
    ;; float64 _set_position
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _current_position
       (sys::poke _current_position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _set_position
       (sys::poke _set_position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _current_position
     (setq _current_position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _set_position
     (setq _set_position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get devices::SliderMsg :md5sum-) "80a3b7d98d77f99e273a14e0b8cc28f9")
(setf (get devices::SliderMsg :datatype-) "devices/SliderMsg")
(setf (get devices::SliderMsg :definition-)
      "### Message type for the slider bar in my VIO project

# Header contains time stamp, sequence ID and frame ID
Header header
# Data includes:
float64 current_position    # current position of the slider endpoint
float64 set_position        # set position into the slider controller
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



(provide :devices/SliderMsg "80a3b7d98d77f99e273a14e0b8cc28f9")


