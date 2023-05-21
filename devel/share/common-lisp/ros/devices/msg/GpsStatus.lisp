; Auto-generated. Do not edit!


(cl:in-package devices-msg)


;//! \htmlinclude GpsStatus.msg.html

(cl:defclass <GpsStatus> (roslisp-msg-protocol:ros-message)
  ((date
    :reader date
    :initarg :date
    :type cl:string
    :initform "")
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (numsat
    :reader numsat
    :initarg :numsat
    :type cl:fixnum
    :initform 0)
   (quality
    :reader quality
    :initarg :quality
    :type cl:fixnum
    :initform 0)
   (hdop
    :reader hdop
    :initarg :hdop
    :type cl:float
    :initform 0.0))
)

(cl:defclass GpsStatus (<GpsStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpsStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpsStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name devices-msg:<GpsStatus> is deprecated: use devices-msg:GpsStatus instead.")))

(cl:ensure-generic-function 'date-val :lambda-list '(m))
(cl:defmethod date-val ((m <GpsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:date-val is deprecated.  Use devices-msg:date instead.")
  (date m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <GpsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:time-val is deprecated.  Use devices-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'numsat-val :lambda-list '(m))
(cl:defmethod numsat-val ((m <GpsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:numsat-val is deprecated.  Use devices-msg:numsat instead.")
  (numsat m))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <GpsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:quality-val is deprecated.  Use devices-msg:quality instead.")
  (quality m))

(cl:ensure-generic-function 'hdop-val :lambda-list '(m))
(cl:defmethod hdop-val ((m <GpsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:hdop-val is deprecated.  Use devices-msg:hdop instead.")
  (hdop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpsStatus>) ostream)
  "Serializes a message object of type '<GpsStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'date))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'date))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'numsat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'quality)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'hdop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpsStatus>) istream)
  "Deserializes a message object of type '<GpsStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'date) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'date) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numsat) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'quality) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hdop) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpsStatus>)))
  "Returns string type for a message object of type '<GpsStatus>"
  "devices/GpsStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsStatus)))
  "Returns string type for a message object of type 'GpsStatus"
  "devices/GpsStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpsStatus>)))
  "Returns md5sum for a message object of type '<GpsStatus>"
  "aa776ee501a0e18fe7a26e4b146b0685")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpsStatus)))
  "Returns md5sum for a message object of type 'GpsStatus"
  "aa776ee501a0e18fe7a26e4b146b0685")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpsStatus>)))
  "Returns full string definition for message of type '<GpsStatus>"
  (cl:format cl:nil "string date~%float64 time~%int16 numsat~%int16 quality~%float64 hdop~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpsStatus)))
  "Returns full string definition for message of type 'GpsStatus"
  (cl:format cl:nil "string date~%float64 time~%int16 numsat~%int16 quality~%float64 hdop~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpsStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'date))
     8
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpsStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GpsStatus
    (cl:cons ':date (date msg))
    (cl:cons ':time (time msg))
    (cl:cons ':numsat (numsat msg))
    (cl:cons ':quality (quality msg))
    (cl:cons ':hdop (hdop msg))
))
