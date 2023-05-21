;; Auto-generated. Do not edit!


(when (boundp 'devices::WheelMsg)
  (if (not (find-package "DEVICES"))
    (make-package "DEVICES"))
  (shadow 'WheelMsg (find-package "DEVICES")))
(unless (find-package "DEVICES::WHEELMSG")
  (make-package "DEVICES::WHEELMSG"))

(in-package "ROS")
;;//! \htmlinclude WheelMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass devices::WheelMsg
  :super ros::object
  :slots (_header _encoder_velocity_left _encoder_velocity_right _encoder_position_left _encoder_position_right ))

(defmethod devices::WheelMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:encoder_velocity_left __encoder_velocity_left) 0)
    ((:encoder_velocity_right __encoder_velocity_right) 0)
    ((:encoder_position_left __encoder_position_left) 0)
    ((:encoder_position_right __encoder_position_right) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _encoder_velocity_left (round __encoder_velocity_left))
   (setq _encoder_velocity_right (round __encoder_velocity_right))
   (setq _encoder_position_left (round __encoder_position_left))
   (setq _encoder_position_right (round __encoder_position_right))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:encoder_velocity_left
   (&optional __encoder_velocity_left)
   (if __encoder_velocity_left (setq _encoder_velocity_left __encoder_velocity_left)) _encoder_velocity_left)
  (:encoder_velocity_right
   (&optional __encoder_velocity_right)
   (if __encoder_velocity_right (setq _encoder_velocity_right __encoder_velocity_right)) _encoder_velocity_right)
  (:encoder_position_left
   (&optional __encoder_position_left)
   (if __encoder_position_left (setq _encoder_position_left __encoder_position_left)) _encoder_position_left)
  (:encoder_position_right
   (&optional __encoder_position_right)
   (if __encoder_position_right (setq _encoder_position_right __encoder_position_right)) _encoder_position_right)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _encoder_velocity_left
    4
    ;; int32 _encoder_velocity_right
    4
    ;; int32 _encoder_position_left
    4
    ;; int32 _encoder_position_right
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _encoder_velocity_left
       (write-long _encoder_velocity_left s)
     ;; int32 _encoder_velocity_right
       (write-long _encoder_velocity_right s)
     ;; int32 _encoder_position_left
       (write-long _encoder_position_left s)
     ;; int32 _encoder_position_right
       (write-long _encoder_position_right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _encoder_velocity_left
     (setq _encoder_velocity_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _encoder_velocity_right
     (setq _encoder_velocity_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _encoder_position_left
     (setq _encoder_position_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _encoder_position_right
     (setq _encoder_position_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get devices::WheelMsg :md5sum-) "f1acbf06768b2f4bd68a3ae020bb8446")
(setf (get devices::WheelMsg :datatype-) "devices/WheelMsg")
(setf (get devices::WheelMsg :definition-)
      "# Message of information read from the Wheelchair

# Hedaer of this ros message
# header.seq        : consecutive increasing ID
# header.stamp      : timestamp of the message
#   .sec            : seconds
#   .nsec           : nanoseconds
# header.frame_id   : name of this data
Header header

int32 encoder_velocity_left     # [pulse/T]
int32 encoder_velocity_right    # [pulse/T]
int32 encoder_position_left     # [pulse]
int32 encoder_position_right    # [pulse]
# float64 wheel_velocity_left     # [m/s]  = encoder_velocity_left  * (f * circum / resol)
# float64 wheel_velocity_right    # [m/s]  = encoder_velocity_right * (f * circum / resol)
# float64 wheel_position_left     # [m]    = encoder_position_left  * (circum / resol)
# float64 wheel_position_right    # [m]    = encoder_position_right * (circum / resol)

# Encoder resolution: 3200 pulse/round
# Wheel circumference: 1.433 meter
# Sampling frequency (f = 1/T): 100Hz
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



(provide :devices/WheelMsg "f1acbf06768b2f4bd68a3ae020bb8446")


