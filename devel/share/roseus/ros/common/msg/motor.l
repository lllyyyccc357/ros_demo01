;; Auto-generated. Do not edit!


(when (boundp 'common::motor)
  (if (not (find-package "COMMON"))
    (make-package "COMMON"))
  (shadow 'motor (find-package "COMMON")))
(unless (find-package "COMMON::MOTOR")
  (make-package "COMMON::MOTOR"))

(in-package "ROS")
;;//! \htmlinclude motor.msg.html


(defclass common::motor
  :super ros::object
  :slots (_num _PWM ))

(defmethod common::motor
  (:init
   (&key
    ((:num __num) 0)
    ((:PWM __PWM) 0.0)
    )
   (send-super :init)
   (setq _num (round __num))
   (setq _PWM (float __PWM))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:PWM
   (&optional __PWM)
   (if __PWM (setq _PWM __PWM)) _PWM)
  (:serialization-length
   ()
   (+
    ;; uint16 _num
    2
    ;; float64 _PWM
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _num
       (write-word _num s)
     ;; float64 _PWM
       (sys::poke _PWM (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _num
     (setq _num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _PWM
     (setq _PWM (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get common::motor :md5sum-) "fcb8db8f718aced907ae4911d3282034")
(setf (get common::motor :datatype-) "common/motor")
(setf (get common::motor :definition-)
      "uint16 num
# BCM coding : 5 6 12 13 16 19 20 21
float64 PWM
")



(provide :common/motor "fcb8db8f718aced907ae4911d3282034")


