; Auto-generated. Do not edit!


(cl:in-package common-msg)


;//! \htmlinclude data.msg.html

(cl:defclass <data> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:fixnum
    :initform 0)
   (dataX
    :reader dataX
    :initarg :dataX
    :type cl:float
    :initform 0.0)
   (dataY
    :reader dataY
    :initarg :dataY
    :type cl:float
    :initform 0.0)
   (dataZ
    :reader dataZ
    :initarg :dataZ
    :type cl:float
    :initform 0.0))
)

(cl:defclass data (<data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common-msg:<data> is deprecated: use common-msg:data instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common-msg:num-val is deprecated.  Use common-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common-msg:name-val is deprecated.  Use common-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'dataX-val :lambda-list '(m))
(cl:defmethod dataX-val ((m <data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common-msg:dataX-val is deprecated.  Use common-msg:dataX instead.")
  (dataX m))

(cl:ensure-generic-function 'dataY-val :lambda-list '(m))
(cl:defmethod dataY-val ((m <data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common-msg:dataY-val is deprecated.  Use common-msg:dataY instead.")
  (dataY m))

(cl:ensure-generic-function 'dataZ-val :lambda-list '(m))
(cl:defmethod dataZ-val ((m <data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common-msg:dataZ-val is deprecated.  Use common-msg:dataZ instead.")
  (dataZ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <data>) ostream)
  "Serializes a message object of type '<data>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'name)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'name)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dataX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dataY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dataZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <data>) istream)
  "Deserializes a message object of type '<data>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'name)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'name)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dataX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dataY) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dataZ) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<data>)))
  "Returns string type for a message object of type '<data>"
  "common/data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'data)))
  "Returns string type for a message object of type 'data"
  "common/data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<data>)))
  "Returns md5sum for a message object of type '<data>"
  "e9bb33691428ef10dc0972b1c5accbe4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'data)))
  "Returns md5sum for a message object of type 'data"
  "e9bb33691428ef10dc0972b1c5accbe4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<data>)))
  "Returns full string definition for message of type '<data>"
  (cl:format cl:nil "uint16 num~%# 2 IMU num 0,1~%uint16 name~%# gyro 1 acc 2 mag 3~%float64 dataX~%float64 dataY~%float64 dataZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'data)))
  "Returns full string definition for message of type 'data"
  (cl:format cl:nil "uint16 num~%# 2 IMU num 0,1~%uint16 name~%# gyro 1 acc 2 mag 3~%float64 dataX~%float64 dataY~%float64 dataZ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <data>))
  (cl:+ 0
     2
     2
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <data>))
  "Converts a ROS message object to a list"
  (cl:list 'data
    (cl:cons ':num (num msg))
    (cl:cons ':name (name msg))
    (cl:cons ':dataX (dataX msg))
    (cl:cons ':dataY (dataY msg))
    (cl:cons ':dataZ (dataZ msg))
))
