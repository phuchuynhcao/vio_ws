; Auto-generated. Do not edit!


(cl:in-package devices-msg)


;//! \htmlinclude SliderSetting.msg.html

(cl:defclass <SliderSetting> (roslisp-msg-protocol:ros-message)
  ((P_gain
    :reader P_gain
    :initarg :P_gain
    :type cl:float
    :initform 0.0)
   (I_gain
    :reader I_gain
    :initarg :I_gain
    :type cl:float
    :initform 0.0)
   (D_gain
    :reader D_gain
    :initarg :D_gain
    :type cl:float
    :initform 0.0))
)

(cl:defclass SliderSetting (<SliderSetting>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SliderSetting>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SliderSetting)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name devices-msg:<SliderSetting> is deprecated: use devices-msg:SliderSetting instead.")))

(cl:ensure-generic-function 'P_gain-val :lambda-list '(m))
(cl:defmethod P_gain-val ((m <SliderSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:P_gain-val is deprecated.  Use devices-msg:P_gain instead.")
  (P_gain m))

(cl:ensure-generic-function 'I_gain-val :lambda-list '(m))
(cl:defmethod I_gain-val ((m <SliderSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:I_gain-val is deprecated.  Use devices-msg:I_gain instead.")
  (I_gain m))

(cl:ensure-generic-function 'D_gain-val :lambda-list '(m))
(cl:defmethod D_gain-val ((m <SliderSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:D_gain-val is deprecated.  Use devices-msg:D_gain instead.")
  (D_gain m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SliderSetting>) ostream)
  "Serializes a message object of type '<SliderSetting>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'P_gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'I_gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'D_gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SliderSetting>) istream)
  "Deserializes a message object of type '<SliderSetting>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'P_gain) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'I_gain) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'D_gain) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SliderSetting>)))
  "Returns string type for a message object of type '<SliderSetting>"
  "devices/SliderSetting")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SliderSetting)))
  "Returns string type for a message object of type 'SliderSetting"
  "devices/SliderSetting")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SliderSetting>)))
  "Returns md5sum for a message object of type '<SliderSetting>"
  "96232ca94773cb90951bb888425fcbed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SliderSetting)))
  "Returns md5sum for a message object of type 'SliderSetting"
  "96232ca94773cb90951bb888425fcbed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SliderSetting>)))
  "Returns full string definition for message of type '<SliderSetting>"
  (cl:format cl:nil "### Message type for live configurate the slider~%~%# PID Controller parameters~%float64 P_gain~%float64 I_gain~%float64 D_gain~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SliderSetting)))
  "Returns full string definition for message of type 'SliderSetting"
  (cl:format cl:nil "### Message type for live configurate the slider~%~%# PID Controller parameters~%float64 P_gain~%float64 I_gain~%float64 D_gain~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SliderSetting>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SliderSetting>))
  "Converts a ROS message object to a list"
  (cl:list 'SliderSetting
    (cl:cons ':P_gain (P_gain msg))
    (cl:cons ':I_gain (I_gain msg))
    (cl:cons ':D_gain (D_gain msg))
))
