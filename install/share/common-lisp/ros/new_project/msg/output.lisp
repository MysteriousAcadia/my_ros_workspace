; Auto-generated. Do not edit!


(cl:in-package new_project-msg)


;//! \htmlinclude output.msg.html

(cl:defclass <output> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass output (<output>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <output>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'output)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name new_project-msg:<output> is deprecated: use new_project-msg:output instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader new_project-msg:output-val is deprecated.  Use new_project-msg:output instead.")
  (output m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader new_project-msg:status-val is deprecated.  Use new_project-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <output>) ostream)
  "Serializes a message object of type '<output>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <output>) istream)
  "Deserializes a message object of type '<output>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'output) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<output>)))
  "Returns string type for a message object of type '<output>"
  "new_project/output")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'output)))
  "Returns string type for a message object of type 'output"
  "new_project/output")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<output>)))
  "Returns md5sum for a message object of type '<output>"
  "6dc767a0ee3290acb4a8a3c442cafea7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'output)))
  "Returns md5sum for a message object of type 'output"
  "6dc767a0ee3290acb4a8a3c442cafea7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<output>)))
  "Returns full string definition for message of type '<output>"
  (cl:format cl:nil "float64 output~%bool status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'output)))
  "Returns full string definition for message of type 'output"
  (cl:format cl:nil "float64 output~%bool status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <output>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <output>))
  "Converts a ROS message object to a list"
  (cl:list 'output
    (cl:cons ':output (output msg))
    (cl:cons ':status (status msg))
))
