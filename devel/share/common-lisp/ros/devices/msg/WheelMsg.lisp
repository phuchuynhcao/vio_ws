; Auto-generated. Do not edit!


(cl:in-package devices-msg)


;//! \htmlinclude WheelMsg.msg.html

(cl:defclass <WheelMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (encoder_velocity_left
    :reader encoder_velocity_left
    :initarg :encoder_velocity_left
    :type cl:integer
    :initform 0)
   (encoder_velocity_right
    :reader encoder_velocity_right
    :initarg :encoder_velocity_right
    :type cl:integer
    :initform 0)
   (encoder_position_left
    :reader encoder_position_left
    :initarg :encoder_position_left
    :type cl:integer
    :initform 0)
   (encoder_position_right
    :reader encoder_position_right
    :initarg :encoder_position_right
    :type cl:integer
    :initform 0))
)

(cl:defclass WheelMsg (<WheelMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name devices-msg:<WheelMsg> is deprecated: use devices-msg:WheelMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WheelMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:header-val is deprecated.  Use devices-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'encoder_velocity_left-val :lambda-list '(m))
(cl:defmethod encoder_velocity_left-val ((m <WheelMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:encoder_velocity_left-val is deprecated.  Use devices-msg:encoder_velocity_left instead.")
  (encoder_velocity_left m))

(cl:ensure-generic-function 'encoder_velocity_right-val :lambda-list '(m))
(cl:defmethod encoder_velocity_right-val ((m <WheelMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:encoder_velocity_right-val is deprecated.  Use devices-msg:encoder_velocity_right instead.")
  (encoder_velocity_right m))

(cl:ensure-generic-function 'encoder_position_left-val :lambda-list '(m))
(cl:defmethod encoder_position_left-val ((m <WheelMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:encoder_position_left-val is deprecated.  Use devices-msg:encoder_position_left instead.")
  (encoder_position_left m))

(cl:ensure-generic-function 'encoder_position_right-val :lambda-list '(m))
(cl:defmethod encoder_position_right-val ((m <WheelMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:encoder_position_right-val is deprecated.  Use devices-msg:encoder_position_right instead.")
  (encoder_position_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelMsg>) ostream)
  "Serializes a message object of type '<WheelMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'encoder_velocity_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'encoder_velocity_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'encoder_position_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'encoder_position_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelMsg>) istream)
  "Deserializes a message object of type '<WheelMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'encoder_velocity_left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'encoder_velocity_right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'encoder_position_left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'encoder_position_right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelMsg>)))
  "Returns string type for a message object of type '<WheelMsg>"
  "devices/WheelMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelMsg)))
  "Returns string type for a message object of type 'WheelMsg"
  "devices/WheelMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelMsg>)))
  "Returns md5sum for a message object of type '<WheelMsg>"
  "f1acbf06768b2f4bd68a3ae020bb8446")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelMsg)))
  "Returns md5sum for a message object of type 'WheelMsg"
  "f1acbf06768b2f4bd68a3ae020bb8446")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelMsg>)))
  "Returns full string definition for message of type '<WheelMsg>"
  (cl:format cl:nil "# Message of information read from the Wheelchair~%~%# Hedaer of this ros message~%# header.seq        : consecutive increasing ID~%# header.stamp      : timestamp of the message~%#   .sec            : seconds~%#   .nsec           : nanoseconds~%# header.frame_id   : name of this data~%Header header~%~%int32 encoder_velocity_left     # [pulse/T]~%int32 encoder_velocity_right    # [pulse/T]~%int32 encoder_position_left     # [pulse]~%int32 encoder_position_right    # [pulse]~%# float64 wheel_velocity_left     # [m/s]  = encoder_velocity_left  * (f * circum / resol)~%# float64 wheel_velocity_right    # [m/s]  = encoder_velocity_right * (f * circum / resol)~%# float64 wheel_position_left     # [m]    = encoder_position_left  * (circum / resol)~%# float64 wheel_position_right    # [m]    = encoder_position_right * (circum / resol)~%~%# Encoder resolution: 3200 pulse/round~%# Wheel circumference: 1.433 meter~%# Sampling frequency (f = 1/T): 100Hz~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelMsg)))
  "Returns full string definition for message of type 'WheelMsg"
  (cl:format cl:nil "# Message of information read from the Wheelchair~%~%# Hedaer of this ros message~%# header.seq        : consecutive increasing ID~%# header.stamp      : timestamp of the message~%#   .sec            : seconds~%#   .nsec           : nanoseconds~%# header.frame_id   : name of this data~%Header header~%~%int32 encoder_velocity_left     # [pulse/T]~%int32 encoder_velocity_right    # [pulse/T]~%int32 encoder_position_left     # [pulse]~%int32 encoder_position_right    # [pulse]~%# float64 wheel_velocity_left     # [m/s]  = encoder_velocity_left  * (f * circum / resol)~%# float64 wheel_velocity_right    # [m/s]  = encoder_velocity_right * (f * circum / resol)~%# float64 wheel_position_left     # [m]    = encoder_position_left  * (circum / resol)~%# float64 wheel_position_right    # [m]    = encoder_position_right * (circum / resol)~%~%# Encoder resolution: 3200 pulse/round~%# Wheel circumference: 1.433 meter~%# Sampling frequency (f = 1/T): 100Hz~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelMsg
    (cl:cons ':header (header msg))
    (cl:cons ':encoder_velocity_left (encoder_velocity_left msg))
    (cl:cons ':encoder_velocity_right (encoder_velocity_right msg))
    (cl:cons ':encoder_position_left (encoder_position_left msg))
    (cl:cons ':encoder_position_right (encoder_position_right msg))
))
