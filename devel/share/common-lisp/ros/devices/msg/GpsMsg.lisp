; Auto-generated. Do not edit!


(cl:in-package devices-msg)


;//! \htmlinclude GpsMsg.msg.html

(cl:defclass <GpsMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (latlongheight
    :reader latlongheight
    :initarg :latlongheight
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (latlongheight_error
    :reader latlongheight_error
    :initarg :latlongheight_error
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (llh_origin
    :reader llh_origin
    :initarg :llh_origin
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (enu_position
    :reader enu_position
    :initarg :enu_position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity_error
    :reader velocity_error
    :initarg :velocity_error
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (status
    :reader status
    :initarg :status
    :type devices-msg:GpsStatus
    :initform (cl:make-instance 'devices-msg:GpsStatus)))
)

(cl:defclass GpsMsg (<GpsMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpsMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpsMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name devices-msg:<GpsMsg> is deprecated: use devices-msg:GpsMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GpsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:header-val is deprecated.  Use devices-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'latlongheight-val :lambda-list '(m))
(cl:defmethod latlongheight-val ((m <GpsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:latlongheight-val is deprecated.  Use devices-msg:latlongheight instead.")
  (latlongheight m))

(cl:ensure-generic-function 'latlongheight_error-val :lambda-list '(m))
(cl:defmethod latlongheight_error-val ((m <GpsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:latlongheight_error-val is deprecated.  Use devices-msg:latlongheight_error instead.")
  (latlongheight_error m))

(cl:ensure-generic-function 'llh_origin-val :lambda-list '(m))
(cl:defmethod llh_origin-val ((m <GpsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:llh_origin-val is deprecated.  Use devices-msg:llh_origin instead.")
  (llh_origin m))

(cl:ensure-generic-function 'enu_position-val :lambda-list '(m))
(cl:defmethod enu_position-val ((m <GpsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:enu_position-val is deprecated.  Use devices-msg:enu_position instead.")
  (enu_position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <GpsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:velocity-val is deprecated.  Use devices-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'velocity_error-val :lambda-list '(m))
(cl:defmethod velocity_error-val ((m <GpsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:velocity_error-val is deprecated.  Use devices-msg:velocity_error instead.")
  (velocity_error m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GpsMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:status-val is deprecated.  Use devices-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpsMsg>) ostream)
  "Serializes a message object of type '<GpsMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'latlongheight) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'latlongheight_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'llh_origin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'enu_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpsMsg>) istream)
  "Deserializes a message object of type '<GpsMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'latlongheight) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'latlongheight_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'llh_origin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'enu_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpsMsg>)))
  "Returns string type for a message object of type '<GpsMsg>"
  "devices/GpsMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsMsg)))
  "Returns string type for a message object of type 'GpsMsg"
  "devices/GpsMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpsMsg>)))
  "Returns md5sum for a message object of type '<GpsMsg>"
  "f47c7c77f2a7901121e8d2f16bd8f0f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpsMsg)))
  "Returns md5sum for a message object of type 'GpsMsg"
  "f47c7c77f2a7901121e8d2f16bd8f0f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpsMsg>)))
  "Returns full string definition for message of type '<GpsMsg>"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Vector3 latlongheight~%geometry_msgs/Vector3 latlongheight_error~%geometry_msgs/Vector3 llh_origin~%geometry_msgs/Vector3 enu_position~%geometry_msgs/Vector3 velocity # <course-over-ground> <speed-over-ground> <up speed>~%geometry_msgs/Vector3 velocity_error~%GpsStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: devices/GpsStatus~%string date~%float64 time~%int16 numsat~%int16 quality~%float64 hdop~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpsMsg)))
  "Returns full string definition for message of type 'GpsMsg"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Vector3 latlongheight~%geometry_msgs/Vector3 latlongheight_error~%geometry_msgs/Vector3 llh_origin~%geometry_msgs/Vector3 enu_position~%geometry_msgs/Vector3 velocity # <course-over-ground> <speed-over-ground> <up speed>~%geometry_msgs/Vector3 velocity_error~%GpsStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: devices/GpsStatus~%string date~%float64 time~%int16 numsat~%int16 quality~%float64 hdop~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpsMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'latlongheight))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'latlongheight_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'llh_origin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'enu_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpsMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'GpsMsg
    (cl:cons ':header (header msg))
    (cl:cons ':latlongheight (latlongheight msg))
    (cl:cons ':latlongheight_error (latlongheight_error msg))
    (cl:cons ':llh_origin (llh_origin msg))
    (cl:cons ':enu_position (enu_position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':velocity_error (velocity_error msg))
    (cl:cons ':status (status msg))
))
