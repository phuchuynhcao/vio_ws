; Auto-generated. Do not edit!


(cl:in-package devices-msg)


;//! \htmlinclude SpanHeader.msg.html

(cl:defclass <SpanHeader> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (port
    :reader port
    :initarg :port
    :type cl:string
    :initform "")
   (idle_time
    :reader idle_time
    :initarg :idle_time
    :type cl:float
    :initform 0.0)
   (gps_status
    :reader gps_status
    :initarg :gps_status
    :type cl:string
    :initform "")
   (week
    :reader week
    :initarg :week
    :type cl:integer
    :initform 0)
   (second
    :reader second
    :initarg :second
    :type cl:float
    :initform 0.0)
   (receiver_status
    :reader receiver_status
    :initarg :receiver_status
    :type cl:string
    :initform "")
   (receiver_version
    :reader receiver_version
    :initarg :receiver_version
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SpanHeader (<SpanHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpanHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpanHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name devices-msg:<SpanHeader> is deprecated: use devices-msg:SpanHeader instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SpanHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:message-val is deprecated.  Use devices-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <SpanHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:port-val is deprecated.  Use devices-msg:port instead.")
  (port m))

(cl:ensure-generic-function 'idle_time-val :lambda-list '(m))
(cl:defmethod idle_time-val ((m <SpanHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:idle_time-val is deprecated.  Use devices-msg:idle_time instead.")
  (idle_time m))

(cl:ensure-generic-function 'gps_status-val :lambda-list '(m))
(cl:defmethod gps_status-val ((m <SpanHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:gps_status-val is deprecated.  Use devices-msg:gps_status instead.")
  (gps_status m))

(cl:ensure-generic-function 'week-val :lambda-list '(m))
(cl:defmethod week-val ((m <SpanHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:week-val is deprecated.  Use devices-msg:week instead.")
  (week m))

(cl:ensure-generic-function 'second-val :lambda-list '(m))
(cl:defmethod second-val ((m <SpanHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:second-val is deprecated.  Use devices-msg:second instead.")
  (second m))

(cl:ensure-generic-function 'receiver_status-val :lambda-list '(m))
(cl:defmethod receiver_status-val ((m <SpanHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:receiver_status-val is deprecated.  Use devices-msg:receiver_status instead.")
  (receiver_status m))

(cl:ensure-generic-function 'receiver_version-val :lambda-list '(m))
(cl:defmethod receiver_version-val ((m <SpanHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:receiver_version-val is deprecated.  Use devices-msg:receiver_version instead.")
  (receiver_version m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpanHeader>) ostream)
  "Serializes a message object of type '<SpanHeader>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'port))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'port))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'idle_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gps_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gps_status))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'week)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'second))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'receiver_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'receiver_status))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receiver_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'receiver_version)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpanHeader>) istream)
  "Deserializes a message object of type '<SpanHeader>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'port) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'port) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'idle_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gps_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'week)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'second) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'receiver_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'receiver_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receiver_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'receiver_version)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpanHeader>)))
  "Returns string type for a message object of type '<SpanHeader>"
  "devices/SpanHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpanHeader)))
  "Returns string type for a message object of type 'SpanHeader"
  "devices/SpanHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpanHeader>)))
  "Returns md5sum for a message object of type '<SpanHeader>"
  "8e762a70f279b5ba5260c226d2b8b272")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpanHeader)))
  "Returns md5sum for a message object of type 'SpanHeader"
  "8e762a70f279b5ba5260c226d2b8b272")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpanHeader>)))
  "Returns full string definition for message of type '<SpanHeader>"
  (cl:format cl:nil "# Header of information read from the SPAN-CPT system~%~%string message              # The name of the log or command (string)~%string port                 # The name of the port where the log was generated (string)~%~%float32 idle_time           # The minimum percentage of time the processor is idle, between successive logs, with the same message ID [%]~%string gps_status           # The quality of the GPS reference time (string)~%~%uint32 week                 # The GPS reference week, zero point from midnight of January 5, 1980 [week]~%float64 second              # Seconds since last week [seconds]~%~%string receiver_status      # Status of various hardware and software components of the receiver (4-byte hex number)~%uint16 receiver_version     # Reveiver software build number (0-65535)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpanHeader)))
  "Returns full string definition for message of type 'SpanHeader"
  (cl:format cl:nil "# Header of information read from the SPAN-CPT system~%~%string message              # The name of the log or command (string)~%string port                 # The name of the port where the log was generated (string)~%~%float32 idle_time           # The minimum percentage of time the processor is idle, between successive logs, with the same message ID [%]~%string gps_status           # The quality of the GPS reference time (string)~%~%uint32 week                 # The GPS reference week, zero point from midnight of January 5, 1980 [week]~%float64 second              # Seconds since last week [seconds]~%~%string receiver_status      # Status of various hardware and software components of the receiver (4-byte hex number)~%uint16 receiver_version     # Reveiver software build number (0-65535)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpanHeader>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:length (cl:slot-value msg 'port))
     4
     4 (cl:length (cl:slot-value msg 'gps_status))
     4
     8
     4 (cl:length (cl:slot-value msg 'receiver_status))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpanHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'SpanHeader
    (cl:cons ':message (message msg))
    (cl:cons ':port (port msg))
    (cl:cons ':idle_time (idle_time msg))
    (cl:cons ':gps_status (gps_status msg))
    (cl:cons ':week (week msg))
    (cl:cons ':second (second msg))
    (cl:cons ':receiver_status (receiver_status msg))
    (cl:cons ':receiver_version (receiver_version msg))
))
