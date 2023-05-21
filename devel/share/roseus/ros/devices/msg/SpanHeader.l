;; Auto-generated. Do not edit!


(when (boundp 'devices::SpanHeader)
  (if (not (find-package "DEVICES"))
    (make-package "DEVICES"))
  (shadow 'SpanHeader (find-package "DEVICES")))
(unless (find-package "DEVICES::SPANHEADER")
  (make-package "DEVICES::SPANHEADER"))

(in-package "ROS")
;;//! \htmlinclude SpanHeader.msg.html


(defclass devices::SpanHeader
  :super ros::object
  :slots (_message _port _idle_time _gps_status _week _second _receiver_status _receiver_version ))

(defmethod devices::SpanHeader
  (:init
   (&key
    ((:message __message) "")
    ((:port __port) "")
    ((:idle_time __idle_time) 0.0)
    ((:gps_status __gps_status) "")
    ((:week __week) 0)
    ((:second __second) 0.0)
    ((:receiver_status __receiver_status) "")
    ((:receiver_version __receiver_version) 0)
    )
   (send-super :init)
   (setq _message (string __message))
   (setq _port (string __port))
   (setq _idle_time (float __idle_time))
   (setq _gps_status (string __gps_status))
   (setq _week (round __week))
   (setq _second (float __second))
   (setq _receiver_status (string __receiver_status))
   (setq _receiver_version (round __receiver_version))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:port
   (&optional __port)
   (if __port (setq _port __port)) _port)
  (:idle_time
   (&optional __idle_time)
   (if __idle_time (setq _idle_time __idle_time)) _idle_time)
  (:gps_status
   (&optional __gps_status)
   (if __gps_status (setq _gps_status __gps_status)) _gps_status)
  (:week
   (&optional __week)
   (if __week (setq _week __week)) _week)
  (:second
   (&optional __second)
   (if __second (setq _second __second)) _second)
  (:receiver_status
   (&optional __receiver_status)
   (if __receiver_status (setq _receiver_status __receiver_status)) _receiver_status)
  (:receiver_version
   (&optional __receiver_version)
   (if __receiver_version (setq _receiver_version __receiver_version)) _receiver_version)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ;; string _port
    4 (length _port)
    ;; float32 _idle_time
    4
    ;; string _gps_status
    4 (length _gps_status)
    ;; uint32 _week
    4
    ;; float64 _second
    8
    ;; string _receiver_status
    4 (length _receiver_status)
    ;; uint16 _receiver_version
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string _port
       (write-long (length _port) s) (princ _port s)
     ;; float32 _idle_time
       (sys::poke _idle_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _gps_status
       (write-long (length _gps_status) s) (princ _gps_status s)
     ;; uint32 _week
       (write-long _week s)
     ;; float64 _second
       (sys::poke _second (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _receiver_status
       (write-long (length _receiver_status) s) (princ _receiver_status s)
     ;; uint16 _receiver_version
       (write-word _receiver_version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _port
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _port (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _idle_time
     (setq _idle_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _gps_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gps_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _week
     (setq _week (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _second
     (setq _second (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _receiver_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _receiver_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _receiver_version
     (setq _receiver_version (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get devices::SpanHeader :md5sum-) "8e762a70f279b5ba5260c226d2b8b272")
(setf (get devices::SpanHeader :datatype-) "devices/SpanHeader")
(setf (get devices::SpanHeader :definition-)
      "# Header of information read from the SPAN-CPT system

string message              # The name of the log or command (string)
string port                 # The name of the port where the log was generated (string)

float32 idle_time           # The minimum percentage of time the processor is idle, between successive logs, with the same message ID [%]
string gps_status           # The quality of the GPS reference time (string)

uint32 week                 # The GPS reference week, zero point from midnight of January 5, 1980 [week]
float64 second              # Seconds since last week [seconds]

string receiver_status      # Status of various hardware and software components of the receiver (4-byte hex number)
uint16 receiver_version     # Reveiver software build number (0-65535)

")



(provide :devices/SpanHeader "8e762a70f279b5ba5260c226d2b8b272")


