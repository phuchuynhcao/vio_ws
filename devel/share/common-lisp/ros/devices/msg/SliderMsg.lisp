; Auto-generated. Do not edit!


(cl:in-package devices-msg)


;//! \htmlinclude SliderMsg.msg.html

(cl:defclass <SliderMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (current_position
    :reader current_position
    :initarg :current_position
    :type cl:float
    :initform 0.0)
   (set_position
    :reader set_position
    :initarg :set_position
    :type cl:float
    :initform 0.0))
)

(cl:defclass SliderMsg (<SliderMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SliderMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SliderMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name devices-msg:<SliderMsg> is deprecated: use devices-msg:SliderMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SliderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:header-val is deprecated.  Use devices-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'current_position-val :lambda-list '(m))
(cl:defmethod current_position-val ((m <SliderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:current_position-val is deprecated.  Use devices-msg:current_position instead.")
  (current_position m))

(cl:ensure-generic-function 'set_position-val :lambda-list '(m))
(cl:defmethod set_position-val ((m <SliderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:set_position-val is deprecated.  Use devices-msg:set_position instead.")
  (set_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SliderMsg>) ostream)
  "Serializes a message object of type '<SliderMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'set_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SliderMsg>) istream)
  "Deserializes a message object of type '<SliderMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'set_position) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SliderMsg>)))
  "Returns string type for a message object of type '<SliderMsg>"
  "devices/SliderMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SliderMsg)))
  "Returns string type for a message object of type 'SliderMsg"
  "devices/SliderMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SliderMsg>)))
  "Returns md5sum for a message object of type '<SliderMsg>"
  "80a3b7d98d77f99e273a14e0b8cc28f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SliderMsg)))
  "Returns md5sum for a message object of type 'SliderMsg"
  "80a3b7d98d77f99e273a14e0b8cc28f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SliderMsg>)))
  "Returns full string definition for message of type '<SliderMsg>"
  (cl:format cl:nil "### Message type for the slider bar in my VIO project~%~%# Header contains time stamp, sequence ID and frame ID~%Header header~%# Data includes:~%float64 current_position    # current position of the slider endpoint~%float64 set_position        # set position into the slider controller~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SliderMsg)))
  "Returns full string definition for message of type 'SliderMsg"
  (cl:format cl:nil "### Message type for the slider bar in my VIO project~%~%# Header contains time stamp, sequence ID and frame ID~%Header header~%# Data includes:~%float64 current_position    # current position of the slider endpoint~%float64 set_position        # set position into the slider controller~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SliderMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SliderMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'SliderMsg
    (cl:cons ':header (header msg))
    (cl:cons ':current_position (current_position msg))
    (cl:cons ':set_position (set_position msg))
))
