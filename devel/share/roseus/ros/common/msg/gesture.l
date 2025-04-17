;; Auto-generated. Do not edit!


(when (boundp 'common::gesture)
  (if (not (find-package "COMMON"))
    (make-package "COMMON"))
  (shadow 'gesture (find-package "COMMON")))
(unless (find-package "COMMON::GESTURE")
  (make-package "COMMON::GESTURE"))

(in-package "ROS")
;;//! \htmlinclude gesture.msg.html


(defclass common::gesture
  :super ros::object
  :slots (_IMUnum _EulerAngleX _EulerAngleY _EulerAngleZ ))

(defmethod common::gesture
  (:init
   (&key
    ((:IMUnum __IMUnum) 0)
    ((:EulerAngleX __EulerAngleX) 0.0)
    ((:EulerAngleY __EulerAngleY) 0.0)
    ((:EulerAngleZ __EulerAngleZ) 0.0)
    )
   (send-super :init)
   (setq _IMUnum (round __IMUnum))
   (setq _EulerAngleX (float __EulerAngleX))
   (setq _EulerAngleY (float __EulerAngleY))
   (setq _EulerAngleZ (float __EulerAngleZ))
   self)
  (:IMUnum
   (&optional __IMUnum)
   (if __IMUnum (setq _IMUnum __IMUnum)) _IMUnum)
  (:EulerAngleX
   (&optional __EulerAngleX)
   (if __EulerAngleX (setq _EulerAngleX __EulerAngleX)) _EulerAngleX)
  (:EulerAngleY
   (&optional __EulerAngleY)
   (if __EulerAngleY (setq _EulerAngleY __EulerAngleY)) _EulerAngleY)
  (:EulerAngleZ
   (&optional __EulerAngleZ)
   (if __EulerAngleZ (setq _EulerAngleZ __EulerAngleZ)) _EulerAngleZ)
  (:serialization-length
   ()
   (+
    ;; uint16 _IMUnum
    2
    ;; float64 _EulerAngleX
    8
    ;; float64 _EulerAngleY
    8
    ;; float64 _EulerAngleZ
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _IMUnum
       (write-word _IMUnum s)
     ;; float64 _EulerAngleX
       (sys::poke _EulerAngleX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _EulerAngleY
       (sys::poke _EulerAngleY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _EulerAngleZ
       (sys::poke _EulerAngleZ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _IMUnum
     (setq _IMUnum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _EulerAngleX
     (setq _EulerAngleX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _EulerAngleY
     (setq _EulerAngleY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _EulerAngleZ
     (setq _EulerAngleZ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get common::gesture :md5sum-) "88d3ec4e2cf6db353d34286a6368badd")
(setf (get common::gesture :datatype-) "common/gesture")
(setf (get common::gesture :definition-)
      "uint16 IMUnum
float64 EulerAngleX
float64 EulerAngleY
float64 EulerAngleZ
")



(provide :common/gesture "88d3ec4e2cf6db353d34286a6368badd")


