; Auto-generated. Do not edit!


(cl:in-package ps4Controller-msg)


;//! \htmlinclude control_data.msg.html

(cl:defclass <control_data> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass control_data (<control_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <control_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'control_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ps4Controller-msg:<control_data> is deprecated: use ps4Controller-msg:control_data instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <control_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ps4Controller-msg:type-val is deprecated.  Use ps4Controller-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <control_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ps4Controller-msg:value-val is deprecated.  Use ps4Controller-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <control_data>) ostream)
  "Serializes a message object of type '<control_data>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <control_data>) istream)
  "Deserializes a message object of type '<control_data>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<control_data>)))
  "Returns string type for a message object of type '<control_data>"
  "ps4Controller/control_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'control_data)))
  "Returns string type for a message object of type 'control_data"
  "ps4Controller/control_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<control_data>)))
  "Returns md5sum for a message object of type '<control_data>"
  "8165a05b6e90580d5249802a83c873ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'control_data)))
  "Returns md5sum for a message object of type 'control_data"
  "8165a05b6e90580d5249802a83c873ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<control_data>)))
  "Returns full string definition for message of type '<control_data>"
  (cl:format cl:nil "string type~%float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'control_data)))
  "Returns full string definition for message of type 'control_data"
  (cl:format cl:nil "string type~%float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <control_data>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <control_data>))
  "Converts a ROS message object to a list"
  (cl:list 'control_data
    (cl:cons ':type (type msg))
    (cl:cons ':value (value msg))
))
