;; Auto-generated. Do not edit!


(when (boundp 'bd1_train::SaveAgent)
  (if (not (find-package "BD1_TRAIN"))
    (make-package "BD1_TRAIN"))
  (shadow 'SaveAgent (find-package "BD1_TRAIN")))
(unless (find-package "BD1_TRAIN::SAVEAGENT")
  (make-package "BD1_TRAIN::SAVEAGENT"))
(unless (find-package "BD1_TRAIN::SAVEAGENTREQUEST")
  (make-package "BD1_TRAIN::SAVEAGENTREQUEST"))
(unless (find-package "BD1_TRAIN::SAVEAGENTRESPONSE")
  (make-package "BD1_TRAIN::SAVEAGENTRESPONSE"))

(in-package "ROS")





(defclass bd1_train::SaveAgentRequest
  :super ros::object
  :slots (_name ))

(defmethod bd1_train::SaveAgentRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bd1_train::SaveAgentResponse
  :super ros::object
  :slots (_directory_path ))

(defmethod bd1_train::SaveAgentResponse
  (:init
   (&key
    ((:directory_path __directory_path) "")
    )
   (send-super :init)
   (setq _directory_path (string __directory_path))
   self)
  (:directory_path
   (&optional __directory_path)
   (if __directory_path (setq _directory_path __directory_path)) _directory_path)
  (:serialization-length
   ()
   (+
    ;; string _directory_path
    4 (length _directory_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _directory_path
       (write-long (length _directory_path) s) (princ _directory_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _directory_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _directory_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bd1_train::SaveAgent
  :super ros::object
  :slots ())

(setf (get bd1_train::SaveAgent :md5sum-) "641c24cd18aefc7a57649fc1a8a53333")
(setf (get bd1_train::SaveAgent :datatype-) "bd1_train/SaveAgent")
(setf (get bd1_train::SaveAgent :request) bd1_train::SaveAgentRequest)
(setf (get bd1_train::SaveAgent :response) bd1_train::SaveAgentResponse)

(defmethod bd1_train::SaveAgentRequest
  (:response () (instance bd1_train::SaveAgentResponse :init)))

(setf (get bd1_train::SaveAgentRequest :md5sum-) "641c24cd18aefc7a57649fc1a8a53333")
(setf (get bd1_train::SaveAgentRequest :datatype-) "bd1_train/SaveAgentRequest")
(setf (get bd1_train::SaveAgentRequest :definition-)
      "string name
---
string directory_path

")

(setf (get bd1_train::SaveAgentResponse :md5sum-) "641c24cd18aefc7a57649fc1a8a53333")
(setf (get bd1_train::SaveAgentResponse :datatype-) "bd1_train/SaveAgentResponse")
(setf (get bd1_train::SaveAgentResponse :definition-)
      "string name
---
string directory_path

")



(provide :bd1_train/SaveAgent "641c24cd18aefc7a57649fc1a8a53333")


