;; Auto-generated. Do not edit!


(when (boundp 'devices::SpanNav)
  (if (not (find-package "DEVICES"))
    (make-package "DEVICES"))
  (shadow 'SpanNav (find-package "DEVICES")))
(unless (find-package "DEVICES::SPANNAV")
  (make-package "DEVICES::SPANNAV"))

(in-package "ROS")
;;//! \htmlinclude SpanNav.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass devices::SpanNav
  :super ros::object
  :slots (_header _raw_string ))

(defmethod devices::SpanNav
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

(setf (get devices::SpanNav :md5sum-) "d09cacb8395420a614d91e15f9502b9d")
(setf (get devices::SpanNav :datatype-) "devices/SpanNav")
(setf (get devices::SpanNav :definition-)
      "# Message of navigation information read from the SPAN-CPT system (log INSPVAX)

# Hedaer of this ros message
# header.seq        : consecutive increasing ID
# header.stamp      : timestamp of the message
#   .sec            : seconds
#   .nsec           : nanoseconds
# header.frame_id   : name of this data
Header header

# # Headar of the SPAN message
# SpanHeader span_header

# string ins_status           # Inertial Solution Status (string)
# string pos_type             # Position or Velocity Type (string)

# float64 latitude            # Latitude [degree]
# float64 longtitude          # Longtitude [degree] 
# float64 height              # Orthometric height [m]
# float32 undulation          # Geoid undulation [m]

# float64 vel_north           # North velocity [m/s]
# float64 vel_east            # East velocity [m/s]
# float64 vel_up              # Up velocity [m/s]

# float64 roll                # Rotation angle around Y axis of IMU frame, positive in counter-clockwise [degree]
# float64 pitch               # Rotation angle around X axis of IMU frame, positive in counter-clockwise [degree]
# float64 azimuth             # Rotation angle around Z axis of IMU frame, positive in clockwise [degree]
#                             # The total rotation sequence is (-Z)XY

# float32 sigma_lat           # Standard deviation of latitude [m]
# float32 sigma_long          # Standard deviation of longtitude [m]
# float32 sigma_height        # Standard deviation of height [m]

# float32 sigma_vel_north     # Standard deviation of north velocity [m/s]
# float32 sigma_vel_east      # Standard deviation of east velocity [m/s]
# float32 sigma_vel_up        # Standard deviation of up velocity [m/s]

# float32 sigma_roll          # Standard deviation of roll [degree]
# float32 sigma_pitch         # Standard deviation of pitch [degree]
# float32 sigma_azimuth       # Standard deviation of azimuth [degree]

# string ext_sol_stat         # Extended solution status (4-byte hex number)
# uint16 time_since_update    # Elapsed time since the last ZUPT or position update [second]

# Raw string with time included
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



(provide :devices/SpanNav "d09cacb8395420a614d91e15f9502b9d")


