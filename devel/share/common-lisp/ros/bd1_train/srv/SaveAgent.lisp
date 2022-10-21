; Auto-generated. Do not edit!


(cl:in-package bd1_train-srv)


;//! \htmlinclude SaveAgent-request.msg.html

(cl:defclass <SaveAgent-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass SaveAgent-request (<SaveAgent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveAgent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveAgent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bd1_train-srv:<SaveAgent-request> is deprecated: use bd1_train-srv:SaveAgent-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SaveAgent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_train-srv:name-val is deprecated.  Use bd1_train-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveAgent-request>) ostream)
  "Serializes a message object of type '<SaveAgent-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveAgent-request>) istream)
  "Deserializes a message object of type '<SaveAgent-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveAgent-request>)))
  "Returns string type for a service object of type '<SaveAgent-request>"
  "bd1_train/SaveAgentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveAgent-request)))
  "Returns string type for a service object of type 'SaveAgent-request"
  "bd1_train/SaveAgentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveAgent-request>)))
  "Returns md5sum for a message object of type '<SaveAgent-request>"
  "641c24cd18aefc7a57649fc1a8a53333")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveAgent-request)))
  "Returns md5sum for a message object of type 'SaveAgent-request"
  "641c24cd18aefc7a57649fc1a8a53333")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveAgent-request>)))
  "Returns full string definition for message of type '<SaveAgent-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveAgent-request)))
  "Returns full string definition for message of type 'SaveAgent-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveAgent-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveAgent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveAgent-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude SaveAgent-response.msg.html

(cl:defclass <SaveAgent-response> (roslisp-msg-protocol:ros-message)
  ((directory_path
    :reader directory_path
    :initarg :directory_path
    :type cl:string
    :initform ""))
)

(cl:defclass SaveAgent-response (<SaveAgent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveAgent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveAgent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bd1_train-srv:<SaveAgent-response> is deprecated: use bd1_train-srv:SaveAgent-response instead.")))

(cl:ensure-generic-function 'directory_path-val :lambda-list '(m))
(cl:defmethod directory_path-val ((m <SaveAgent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_train-srv:directory_path-val is deprecated.  Use bd1_train-srv:directory_path instead.")
  (directory_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveAgent-response>) ostream)
  "Serializes a message object of type '<SaveAgent-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'directory_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'directory_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveAgent-response>) istream)
  "Deserializes a message object of type '<SaveAgent-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'directory_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'directory_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveAgent-response>)))
  "Returns string type for a service object of type '<SaveAgent-response>"
  "bd1_train/SaveAgentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveAgent-response)))
  "Returns string type for a service object of type 'SaveAgent-response"
  "bd1_train/SaveAgentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveAgent-response>)))
  "Returns md5sum for a message object of type '<SaveAgent-response>"
  "641c24cd18aefc7a57649fc1a8a53333")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveAgent-response)))
  "Returns md5sum for a message object of type 'SaveAgent-response"
  "641c24cd18aefc7a57649fc1a8a53333")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveAgent-response>)))
  "Returns full string definition for message of type '<SaveAgent-response>"
  (cl:format cl:nil "string directory_path~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveAgent-response)))
  "Returns full string definition for message of type 'SaveAgent-response"
  (cl:format cl:nil "string directory_path~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveAgent-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'directory_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveAgent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveAgent-response
    (cl:cons ':directory_path (directory_path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveAgent)))
  'SaveAgent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveAgent)))
  'SaveAgent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveAgent)))
  "Returns string type for a service object of type '<SaveAgent>"
  "bd1_train/SaveAgent")