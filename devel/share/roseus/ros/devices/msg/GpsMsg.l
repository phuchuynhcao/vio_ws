;; Auto-generated. Do not edit!


(when (boundp 'devices::GpsMsg)
  (if (not (find-package "DEVICES"))
    (make-package "DEVICES"))
  (shadow 'GpsMsg (find-package "DEVICES")))
(unless (find-package "DEVICES::GPSMSG")
  (make-package "DEVICES::GPSMSG"))

(in-package "ROS")
;;//! \htmlinclude GpsMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass devices::GpsMsg
  :super ros::object
  :slots (_header _latlongheight _latlongheight_error _llh_origin _enu_position _velocity _velocity_error _status ))

(defmethod devices::GpsMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:latlongheight __latlongheight) (instance geometry_msgs::Vector3 :init))
    ((:latlongheight_error __latlongheight_error) (instance geometry_msgs::Vector3 :init))
    ((:llh_origin __llh_origin) (instance geometry_msgs::Vector3 :init))
    ((:enu_position __enu_position) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:velocity_error __velocity_error) (instance geometry_msgs::Vector3 :init))
    ((:status __status) (instance devices::GpsStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _latlongheight __latlongheight)
   (setq _latlongheight_error __latlongheight_error)
   (setq _llh_origin __llh_origin)
   (setq _enu_position __enu_position)
   (setq _velocity __velocity)
   (setq _velocity_error __velocity_error)
   (setq _status __status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:latlongheight
   (&rest __latlongheight)
   (if (keywordp (car __latlongheight))
       (send* _latlongheight __latlongheight)
     (progn
       (if __latlongheight (setq _latlongheight (car __latlongheight)))
       _latlongheight)))
  (:latlongheight_error
   (&rest __latlongheight_error)
   (if (keywordp (car __latlongheight_error))
       (send* _latlongheight_error __latlongheight_error)
     (progn
       (if __latlongheight_error (setq _latlongheight_error (car __latlongheight_error)))
       _latlongheight_error)))
  (:llh_origin
   (&rest __llh_origin)
   (if (keywordp (car __llh_origin))
       (send* _llh_origin __llh_origin)
     (progn
       (if __llh_origin (setq _llh_origin (car __llh_origin)))
       _llh_origin)))
  (:enu_position
   (&rest __enu_position)
   (if (keywordp (car __enu_position))
       (send* _enu_position __enu_position)
     (progn
       (if __enu_position (setq _enu_position (car __enu_position)))
       _enu_position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:velocity_error
   (&rest __velocity_error)
   (if (keywordp (car __velocity_error))
       (send* _velocity_error __velocity_error)
     (progn
       (if __velocity_error (setq _velocity_error (car __velocity_error)))
       _velocity_error)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _latlongheight
    (send _latlongheight :serialization-length)
    ;; geometry_msgs/Vector3 _latlongheight_error
    (send _latlongheight_error :serialization-length)
    ;; geometry_msgs/Vector3 _llh_origin
    (send _llh_origin :serialization-length)
    ;; geometry_msgs/Vector3 _enu_position
    (send _enu_position :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _velocity_error
    (send _velocity_error :serialization-length)
    ;; devices/GpsStatus _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _latlongheight
       (send _latlongheight :serialize s)
     ;; geometry_msgs/Vector3 _latlongheight_error
       (send _latlongheight_error :serialize s)
     ;; geometry_msgs/Vector3 _llh_origin
       (send _llh_origin :serialize s)
     ;; geometry_msgs/Vector3 _enu_position
       (send _enu_position :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _velocity_error
       (send _velocity_error :serialize s)
     ;; devices/GpsStatus _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _latlongheight
     (send _latlongheight :deserialize buf ptr-) (incf ptr- (send _latlongheight :serialization-length))
   ;; geometry_msgs/Vector3 _latlongheight_error
     (send _latlongheight_error :deserialize buf ptr-) (incf ptr- (send _latlongheight_error :serialization-length))
   ;; geometry_msgs/Vector3 _llh_origin
     (send _llh_origin :deserialize buf ptr-) (incf ptr- (send _llh_origin :serialization-length))
   ;; geometry_msgs/Vector3 _enu_position
     (send _enu_position :deserialize buf ptr-) (incf ptr- (send _enu_position :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _velocity_error
     (send _velocity_error :deserialize buf ptr-) (incf ptr- (send _velocity_error :serialization-length))
   ;; devices/GpsStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get devices::GpsMsg :md5sum-) "f47c7c77f2a7901121e8d2f16bd8f0f5")
(setf (get devices::GpsMsg :datatype-) "devices/GpsMsg")
(setf (get devices::GpsMsg :definition-)
      "std_msgs/Header header
geometry_msgs/Vector3 latlongheight
geometry_msgs/Vector3 latlongheight_error
geometry_msgs/Vector3 llh_origin
geometry_msgs/Vector3 enu_position
geometry_msgs/Vector3 velocity # <course-over-ground> <speed-over-ground> <up speed>
geometry_msgs/Vector3 velocity_error
GpsStatus status

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
================================================================================
MSG: devices/GpsStatus
string date
float64 time
int16 numsat
int16 quality
float64 hdop
")



(provide :devices/GpsMsg "f47c7c77f2a7901121e8d2f16bd8f0f5")


