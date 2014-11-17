; Auto-generated. Do not edit!


(cl:in-package test01-srv)


;//! \htmlinclude SetSomethink-request.msg.html

(cl:defclass <SetSomethink-request> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:integer
    :initform 0)
   (B
    :reader B
    :initarg :B
    :type cl:integer
    :initform 0))
)

(cl:defclass SetSomethink-request (<SetSomethink-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSomethink-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSomethink-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test01-srv:<SetSomethink-request> is deprecated: use test01-srv:SetSomethink-request instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <SetSomethink-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test01-srv:A-val is deprecated.  Use test01-srv:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <SetSomethink-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test01-srv:B-val is deprecated.  Use test01-srv:B instead.")
  (B m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSomethink-request>) ostream)
  "Serializes a message object of type '<SetSomethink-request>"
  (cl:let* ((signed (cl:slot-value msg 'A)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'B)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSomethink-request>) istream)
  "Deserializes a message object of type '<SetSomethink-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'A) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'B) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSomethink-request>)))
  "Returns string type for a service object of type '<SetSomethink-request>"
  "test01/SetSomethinkRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSomethink-request)))
  "Returns string type for a service object of type 'SetSomethink-request"
  "test01/SetSomethinkRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSomethink-request>)))
  "Returns md5sum for a message object of type '<SetSomethink-request>"
  "713e5cf1444846805670f946f08bfc96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSomethink-request)))
  "Returns md5sum for a message object of type 'SetSomethink-request"
  "713e5cf1444846805670f946f08bfc96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSomethink-request>)))
  "Returns full string definition for message of type '<SetSomethink-request>"
  (cl:format cl:nil "int64 A~%int64 B~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSomethink-request)))
  "Returns full string definition for message of type 'SetSomethink-request"
  (cl:format cl:nil "int64 A~%int64 B~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSomethink-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSomethink-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSomethink-request
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
))
;//! \htmlinclude SetSomethink-response.msg.html

(cl:defclass <SetSomethink-response> (roslisp-msg-protocol:ros-message)
  ((Sum
    :reader Sum
    :initarg :Sum
    :type cl:integer
    :initform 0))
)

(cl:defclass SetSomethink-response (<SetSomethink-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSomethink-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSomethink-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test01-srv:<SetSomethink-response> is deprecated: use test01-srv:SetSomethink-response instead.")))

(cl:ensure-generic-function 'Sum-val :lambda-list '(m))
(cl:defmethod Sum-val ((m <SetSomethink-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test01-srv:Sum-val is deprecated.  Use test01-srv:Sum instead.")
  (Sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSomethink-response>) ostream)
  "Serializes a message object of type '<SetSomethink-response>"
  (cl:let* ((signed (cl:slot-value msg 'Sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSomethink-response>) istream)
  "Deserializes a message object of type '<SetSomethink-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSomethink-response>)))
  "Returns string type for a service object of type '<SetSomethink-response>"
  "test01/SetSomethinkResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSomethink-response)))
  "Returns string type for a service object of type 'SetSomethink-response"
  "test01/SetSomethinkResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSomethink-response>)))
  "Returns md5sum for a message object of type '<SetSomethink-response>"
  "713e5cf1444846805670f946f08bfc96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSomethink-response)))
  "Returns md5sum for a message object of type 'SetSomethink-response"
  "713e5cf1444846805670f946f08bfc96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSomethink-response>)))
  "Returns full string definition for message of type '<SetSomethink-response>"
  (cl:format cl:nil "int64 Sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSomethink-response)))
  "Returns full string definition for message of type 'SetSomethink-response"
  (cl:format cl:nil "int64 Sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSomethink-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSomethink-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSomethink-response
    (cl:cons ':Sum (Sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetSomethink)))
  'SetSomethink-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetSomethink)))
  'SetSomethink-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSomethink)))
  "Returns string type for a service object of type '<SetSomethink>"
  "test01/SetSomethink")