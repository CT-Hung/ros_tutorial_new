; Auto-generated. Do not edit!


(cl:in-package cthung-msg)


;//! \htmlinclude PrimeMsg.msg.html

(cl:defclass <PrimeMsg> (roslisp-msg-protocol:ros-message)
  ((Number
    :reader Number
    :initarg :Number
    :type cl:string
    :initform "")
   (Prime
    :reader Prime
    :initarg :Prime
    :type cl:string
    :initform "")
   (InputID
    :reader InputID
    :initarg :InputID
    :type cl:string
    :initform "")
   (OutputID
    :reader OutputID
    :initarg :OutputID
    :type cl:string
    :initform ""))
)

(cl:defclass PrimeMsg (<PrimeMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrimeMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrimeMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cthung-msg:<PrimeMsg> is deprecated: use cthung-msg:PrimeMsg instead.")))

(cl:ensure-generic-function 'Number-val :lambda-list '(m))
(cl:defmethod Number-val ((m <PrimeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cthung-msg:Number-val is deprecated.  Use cthung-msg:Number instead.")
  (Number m))

(cl:ensure-generic-function 'Prime-val :lambda-list '(m))
(cl:defmethod Prime-val ((m <PrimeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cthung-msg:Prime-val is deprecated.  Use cthung-msg:Prime instead.")
  (Prime m))

(cl:ensure-generic-function 'InputID-val :lambda-list '(m))
(cl:defmethod InputID-val ((m <PrimeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cthung-msg:InputID-val is deprecated.  Use cthung-msg:InputID instead.")
  (InputID m))

(cl:ensure-generic-function 'OutputID-val :lambda-list '(m))
(cl:defmethod OutputID-val ((m <PrimeMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cthung-msg:OutputID-val is deprecated.  Use cthung-msg:OutputID instead.")
  (OutputID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrimeMsg>) ostream)
  "Serializes a message object of type '<PrimeMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Number))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Prime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Prime))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'InputID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'InputID))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'OutputID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'OutputID))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrimeMsg>) istream)
  "Deserializes a message object of type '<PrimeMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Prime) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Prime) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'InputID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'InputID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'OutputID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'OutputID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrimeMsg>)))
  "Returns string type for a message object of type '<PrimeMsg>"
  "cthung/PrimeMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrimeMsg)))
  "Returns string type for a message object of type 'PrimeMsg"
  "cthung/PrimeMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrimeMsg>)))
  "Returns md5sum for a message object of type '<PrimeMsg>"
  "ef51907d5528f928e78a87cf1db99905")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrimeMsg)))
  "Returns md5sum for a message object of type 'PrimeMsg"
  "ef51907d5528f928e78a87cf1db99905")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrimeMsg>)))
  "Returns full string definition for message of type '<PrimeMsg>"
  (cl:format cl:nil "string Number~%string Prime~%string InputID~%string OutputID~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrimeMsg)))
  "Returns full string definition for message of type 'PrimeMsg"
  (cl:format cl:nil "string Number~%string Prime~%string InputID~%string OutputID~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrimeMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Number))
     4 (cl:length (cl:slot-value msg 'Prime))
     4 (cl:length (cl:slot-value msg 'InputID))
     4 (cl:length (cl:slot-value msg 'OutputID))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrimeMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'PrimeMsg
    (cl:cons ':Number (Number msg))
    (cl:cons ':Prime (Prime msg))
    (cl:cons ':InputID (InputID msg))
    (cl:cons ':OutputID (OutputID msg))
))
