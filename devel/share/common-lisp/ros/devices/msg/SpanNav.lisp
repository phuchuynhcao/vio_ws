; Auto-generated. Do not edit!


(cl:in-package devices-msg)


;//! \htmlinclude SpanNav.msg.html

(cl:defclass <SpanNav> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (raw_string
    :reader raw_string
    :initarg :raw_string
    :type cl:string
    :initform ""))
)

(cl:defclass SpanNav (<SpanNav>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpanNav>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpanNav)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name devices-msg:<SpanNav> is deprecated: use devices-msg:SpanNav instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SpanNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:header-val is deprecated.  Use devices-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'raw_string-val :lambda-list '(m))
(cl:defmethod raw_string-val ((m <SpanNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:raw_string-val is deprecated.  Use devices-msg:raw_string instead.")
  (raw_string m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpanNav>) ostream)
  "Serializes a message object of type '<SpanNav>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'raw_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'raw_string))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpanNav>) istream)
  "Deserializes a message object of type '<SpanNav>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'raw_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'raw_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpanNav>)))
  "Returns string type for a message object of type '<SpanNav>"
  "devices/SpanNav")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpanNav)))
  "Returns string type for a message object of type 'SpanNav"
  "devices/SpanNav")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpanNav>)))
  "Returns md5sum for a message object of type '<SpanNav>"
  "d09cacb8395420a614d91e15f9502b9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpanNav)))
  "Returns md5sum for a message object of type 'SpanNav"
  "d09cacb8395420a614d91e15f9502b9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpanNav>)))
  "Returns full string definition for message of type '<SpanNav>"
  (cl:format cl:nil "# Message of navigation information read from the SPAN-CPT system (log INSPVAX)~%~%# Hedaer of this ros message~%# header.seq        : consecutive increasing ID~%# header.stamp      : timestamp of the message~%#   .sec            : seconds~%#   .nsec           : nanoseconds~%# header.frame_id   : name of this data~%Header header~%~%# # Headar of the SPAN message~%# SpanHeader span_header~%~%# string ins_status           # Inertial Solution Status (string)~%# string pos_type             # Position or Velocity Type (string)~%~%# float64 latitude            # Latitude [degree]~%# float64 longtitude          # Longtitude [degree] ~%# float64 height              # Orthometric height [m]~%# float32 undulation          # Geoid undulation [m]~%~%# float64 vel_north           # North velocity [m/s]~%# float64 vel_east            # East velocity [m/s]~%# float64 vel_up              # Up velocity [m/s]~%~%# float64 roll                # Rotation angle around Y axis of IMU frame, positive in counter-clockwise [degree]~%# float64 pitch               # Rotation angle around X axis of IMU frame, positive in counter-clockwise [degree]~%# float64 azimuth             # Rotation angle around Z axis of IMU frame, positive in clockwise [degree]~%#                             # The total rotation sequence is (-Z)XY~%~%# float32 sigma_lat           # Standard deviation of latitude [m]~%# float32 sigma_long          # Standard deviation of longtitude [m]~%# float32 sigma_height        # Standard deviation of height [m]~%~%# float32 sigma_vel_north     # Standard deviation of north velocity [m/s]~%# float32 sigma_vel_east      # Standard deviation of east velocity [m/s]~%# float32 sigma_vel_up        # Standard deviation of up velocity [m/s]~%~%# float32 sigma_roll          # Standard deviation of roll [degree]~%# float32 sigma_pitch         # Standard deviation of pitch [degree]~%# float32 sigma_azimuth       # Standard deviation of azimuth [degree]~%~%# string ext_sol_stat         # Extended solution status (4-byte hex number)~%# uint16 time_since_update    # Elapsed time since the last ZUPT or position update [second]~%~%# Raw string with time included~%string raw_string~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpanNav)))
  "Returns full string definition for message of type 'SpanNav"
  (cl:format cl:nil "# Message of navigation information read from the SPAN-CPT system (log INSPVAX)~%~%# Hedaer of this ros message~%# header.seq        : consecutive increasing ID~%# header.stamp      : timestamp of the message~%#   .sec            : seconds~%#   .nsec           : nanoseconds~%# header.frame_id   : name of this data~%Header header~%~%# # Headar of the SPAN message~%# SpanHeader span_header~%~%# string ins_status           # Inertial Solution Status (string)~%# string pos_type             # Position or Velocity Type (string)~%~%# float64 latitude            # Latitude [degree]~%# float64 longtitude          # Longtitude [degree] ~%# float64 height              # Orthometric height [m]~%# float32 undulation          # Geoid undulation [m]~%~%# float64 vel_north           # North velocity [m/s]~%# float64 vel_east            # East velocity [m/s]~%# float64 vel_up              # Up velocity [m/s]~%~%# float64 roll                # Rotation angle around Y axis of IMU frame, positive in counter-clockwise [degree]~%# float64 pitch               # Rotation angle around X axis of IMU frame, positive in counter-clockwise [degree]~%# float64 azimuth             # Rotation angle around Z axis of IMU frame, positive in clockwise [degree]~%#                             # The total rotation sequence is (-Z)XY~%~%# float32 sigma_lat           # Standard deviation of latitude [m]~%# float32 sigma_long          # Standard deviation of longtitude [m]~%# float32 sigma_height        # Standard deviation of height [m]~%~%# float32 sigma_vel_north     # Standard deviation of north velocity [m/s]~%# float32 sigma_vel_east      # Standard deviation of east velocity [m/s]~%# float32 sigma_vel_up        # Standard deviation of up velocity [m/s]~%~%# float32 sigma_roll          # Standard deviation of roll [degree]~%# float32 sigma_pitch         # Standard deviation of pitch [degree]~%# float32 sigma_azimuth       # Standard deviation of azimuth [degree]~%~%# string ext_sol_stat         # Extended solution status (4-byte hex number)~%# uint16 time_since_update    # Elapsed time since the last ZUPT or position update [second]~%~%# Raw string with time included~%string raw_string~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpanNav>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'raw_string))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpanNav>))
  "Converts a ROS message object to a list"
  (cl:list 'SpanNav
    (cl:cons ':header (header msg))
    (cl:cons ':raw_string (raw_string msg))
))
