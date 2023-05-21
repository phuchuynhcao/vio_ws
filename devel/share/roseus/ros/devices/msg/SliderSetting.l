;; Auto-generated. Do not edit!


(when (boundp 'devices::SliderSetting)
  (if (not (find-package "DEVICES"))
    (make-package "DEVICES"))
  (shadow 'SliderSetting (find-package "DEVICES")))
(unless (find-package "DEVICES::SLIDERSETTING")
  (make-package "DEVICES::SLIDERSETTING"))

(in-package "ROS")
;;//! \htmlinclude SliderSetting.msg.html


(defclass devices::SliderSetting
  :super ros::object
  :slots (_P_gain _I_gain _D_gain ))

(defmethod devices::SliderSetting
  (:init
   (&key
    ((:P_gain __P_gain) 0.0)
    ((:I_gain __I_gain) 0.0)
    ((:D_gain __D_gain) 0.0)
    )
   (send-super :init)
   (setq _P_gain (float __P_gain))
   (setq _I_gain (float __I_gain))
   (setq _D_gain (float __D_gain))
   self)
  (:P_gain
   (&optional __P_gain)
   (if __P_gain (setq _P_gain __P_gain)) _P_gain)
  (:I_gain
   (&optional __I_gain)
   (if __I_gain (setq _I_gain __I_gain)) _I_gain)
  (:D_gain
   (&optional __D_gain)
   (if __D_gain (setq _D_gain __D_gain)) _D_gain)
  (:serialization-length
   ()
   (+
    ;; float64 _P_gain
    8
    ;; float64 _I_gain
    8
    ;; float64 _D_gain
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _P_gain
       (sys::poke _P_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _I_gain
       (sys::poke _I_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _D_gain
       (sys::poke _D_gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _P_gain
     (setq _P_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _I_gain
     (setq _I_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _D_gain
     (setq _D_gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get devices::SliderSetting :md5sum-) "96232ca94773cb90951bb888425fcbed")
(setf (get devices::SliderSetting :datatype-) "devices/SliderSetting")
(setf (get devices::SliderSetting :definition-)
      "### Message type for live configurate the slider

# PID Controller parameters
float64 P_gain
float64 I_gain
float64 D_gain
")



(provide :devices/SliderSetting "96232ca94773cb90951bb888425fcbed")


