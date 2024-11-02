;; Auto-generated. Do not edit!


(when (boundp 'common::data)
  (if (not (find-package "COMMON"))
    (make-package "COMMON"))
  (shadow 'data (find-package "COMMON")))
(unless (find-package "COMMON::DATA")
  (make-package "COMMON::DATA"))

(in-package "ROS")
;;//! \htmlinclude data.msg.html


(defclass common::data
  :super ros::object
  :slots (_num _name _dataX _dataY _dataZ ))

(defmethod common::data
  (:init
   (&key
    ((:num __num) 0)
    ((:name __name) 0)
    ((:dataX __dataX) 0.0)
    ((:dataY __dataY) 0.0)
    ((:dataZ __dataZ) 0.0)
    )
   (send-super :init)
   (setq _num (round __num))
   (setq _name (round __name))
   (setq _dataX (float __dataX))
   (setq _dataY (float __dataY))
   (setq _dataZ (float __dataZ))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:dataX
   (&optional __dataX)
   (if __dataX (setq _dataX __dataX)) _dataX)
  (:dataY
   (&optional __dataY)
   (if __dataY (setq _dataY __dataY)) _dataY)
  (:dataZ
   (&optional __dataZ)
   (if __dataZ (setq _dataZ __dataZ)) _dataZ)
  (:serialization-length
   ()
   (+
    ;; uint16 _num
    2
    ;; uint16 _name
    2
    ;; float64 _dataX
    8
    ;; float64 _dataY
    8
    ;; float64 _dataZ
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _num
       (write-word _num s)
     ;; uint16 _name
       (write-word _name s)
     ;; float64 _dataX
       (sys::poke _dataX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dataY
       (sys::poke _dataY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dataZ
       (sys::poke _dataZ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _num
     (setq _num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _name
     (setq _name (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _dataX
     (setq _dataX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dataY
     (setq _dataY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dataZ
     (setq _dataZ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get common::data :md5sum-) "e9bb33691428ef10dc0972b1c5accbe4")
(setf (get common::data :datatype-) "common/data")
(setf (get common::data :definition-)
      "uint16 num
# 2 IMU num 1,2
uint16 name
# gyro 1 acc 2 mag 3
float64 dataX
float64 dataY
float64 dataZ

")



(provide :common/data "e9bb33691428ef10dc0972b1c5accbe4")


