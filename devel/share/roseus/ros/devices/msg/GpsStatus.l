;; Auto-generated. Do not edit!


(when (boundp 'devices::GpsStatus)
  (if (not (find-package "DEVICES"))
    (make-package "DEVICES"))
  (shadow 'GpsStatus (find-package "DEVICES")))
(unless (find-package "DEVICES::GPSSTATUS")
  (make-package "DEVICES::GPSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude GpsStatus.msg.html


(defclass devices::GpsStatus
  :super ros::object
  :slots (_date _time _numsat _quality _hdop ))

(defmethod devices::GpsStatus
  (:init
   (&key
    ((:date __date) "")
    ((:time __time) 0.0)
    ((:numsat __numsat) 0)
    ((:quality __quality) 0)
    ((:hdop __hdop) 0.0)
    )
   (send-super :init)
   (setq _date (string __date))
   (setq _time (float __time))
   (setq _numsat (round __numsat))
   (setq _quality (round __quality))
   (setq _hdop (float __hdop))
   self)
  (:date
   (&optional __date)
   (if __date (setq _date __date)) _date)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:numsat
   (&optional __numsat)
   (if __numsat (setq _numsat __numsat)) _numsat)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:hdop
   (&optional __hdop)
   (if __hdop (setq _hdop __hdop)) _hdop)
  (:serialization-length
   ()
   (+
    ;; string _date
    4 (length _date)
    ;; float64 _time
    8
    ;; int16 _numsat
    2
    ;; int16 _quality
    2
    ;; float64 _hdop
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _date
       (write-long (length _date) s) (princ _date s)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _numsat
       (write-word _numsat s)
     ;; int16 _quality
       (write-word _quality s)
     ;; float64 _hdop
       (sys::poke _hdop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _date
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _date (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _numsat
     (setq _numsat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _quality
     (setq _quality (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _hdop
     (setq _hdop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get devices::GpsStatus :md5sum-) "aa776ee501a0e18fe7a26e4b146b0685")
(setf (get devices::GpsStatus :datatype-) "devices/GpsStatus")
(setf (get devices::GpsStatus :definition-)
      "string date
float64 time
int16 numsat
int16 quality
float64 hdop
")



(provide :devices/GpsStatus "aa776ee501a0e18fe7a26e4b146b0685")


