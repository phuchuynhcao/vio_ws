; Auto-generated. Do not edit!


(cl:in-package devices-msg)


;//! \htmlinclude RtkMsg.msg.html

(cl:defclass <RtkMsg> (roslisp-msg-protocol:ros-message)
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

(cl:defclass RtkMsg (<RtkMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RtkMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RtkMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name devices-msg:<RtkMsg> is deprecated: use devices-msg:RtkMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RtkMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:header-val is deprecated.  Use devices-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'raw_string-val :lambda-list '(m))
(cl:defmethod raw_string-val ((m <RtkMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader devices-msg:raw_string-val is deprecated.  Use devices-msg:raw_string instead.")
  (raw_string m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RtkMsg>) ostream)
  "Serializes a message object of type '<RtkMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'raw_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'raw_string))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RtkMsg>) istream)
  "Deserializes a message object of type '<RtkMsg>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RtkMsg>)))
  "Returns string type for a message object of type '<RtkMsg>"
  "devices/RtkMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RtkMsg)))
  "Returns string type for a message object of type 'RtkMsg"
  "devices/RtkMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RtkMsg>)))
  "Returns md5sum for a message object of type '<RtkMsg>"
  "d09cacb8395420a614d91e15f9502b9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RtkMsg)))
  "Returns md5sum for a message object of type 'RtkMsg"
  "d09cacb8395420a614d91e15f9502b9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RtkMsg>)))
  "Returns full string definition for message of type '<RtkMsg>"
  (cl:format cl:nil "# Message of navigation information read from the SPAN-CPT system (log INSPVAX)~%~%# Hedaer of this ros message~%# header.seq        : consecutive increasing ID~%# header.stamp      : timestamp of the message~%#   .sec            : seconds~%#   .nsec           : nanoseconds~%# header.frame_id   : name of this data~%Header header~%~%# Raw string recorded from RTK rover~%string raw_string~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RtkMsg)))
  "Returns full string definition for message of type 'RtkMsg"
  (cl:format cl:nil "# Message of navigation information read from the SPAN-CPT system (log INSPVAX)~%~%# Hedaer of this ros message~%# header.seq        : consecutive increasing ID~%# header.stamp      : timestamp of the message~%#   .sec            : seconds~%#   .nsec           : nanoseconds~%# header.frame_id   : name of this data~%Header header~%~%# Raw string recorded from RTK rover~%string raw_string~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RtkMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'raw_string))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RtkMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RtkMsg
    (cl:cons ':header (header msg))
    (cl:cons ':raw_string (raw_string msg))
))
