;; Auto-generated. Do not edit!


(when (boundp 'bd1_environment_interface::SetVectAction)
  (if (not (find-package "BD1_ENVIRONMENT_INTERFACE"))
    (make-package "BD1_ENVIRONMENT_INTERFACE"))
  (shadow 'SetVectAction (find-package "BD1_ENVIRONMENT_INTERFACE")))
(unless (find-package "BD1_ENVIRONMENT_INTERFACE::SETVECTACTION")
  (make-package "BD1_ENVIRONMENT_INTERFACE::SETVECTACTION"))
(unless (find-package "BD1_ENVIRONMENT_INTERFACE::SETVECTACTIONREQUEST")
  (make-package "BD1_ENVIRONMENT_INTERFACE::SETVECTACTIONREQUEST"))
(unless (find-package "BD1_ENVIRONMENT_INTERFACE::SETVECTACTIONRESPONSE")
  (make-package "BD1_ENVIRONMENT_INTERFACE::SETVECTACTIONRESPONSE"))

(in-package "ROS")





(defclass bd1_environment_interface::SetVectActionRequest
  :super ros::object
  :slots (_vector_action ))

(defmethod bd1_environment_interface::SetVectActionRequest
  (:init
   (&key
    ((:vector_action __vector_action) (make-array 8 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _vector_action __vector_action)
   self)
  (:vector_action
   (&optional __vector_action)
   (if __vector_action (setq _vector_action __vector_action)) _vector_action)
  (:serialization-length
   ()
   (+
    ;; float64[8] _vector_action
    (* 8    8)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[8] _vector_action
     (dotimes (i 8)
       (sys::poke (elt _vector_action i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[8] _vector_action
   (dotimes (i (length _vector_action))
     (setf (elt _vector_action i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass bd1_environment_interface::SetVectActionResponse
  :super ros::object
  :slots ())

(defmethod bd1_environment_interface::SetVectActionResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass bd1_environment_interface::SetVectAction
  :super ros::object
  :slots ())

(setf (get bd1_environment_interface::SetVectAction :md5sum-) "cd5ea8395bbd5a6d6460390474bdccf0")
(setf (get bd1_environment_interface::SetVectAction :datatype-) "bd1_environment_interface/SetVectAction")
(setf (get bd1_environment_interface::SetVectAction :request) bd1_environment_interface::SetVectActionRequest)
(setf (get bd1_environment_interface::SetVectAction :response) bd1_environment_interface::SetVectActionResponse)

(defmethod bd1_environment_interface::SetVectActionRequest
  (:response () (instance bd1_environment_interface::SetVectActionResponse :init)))

(setf (get bd1_environment_interface::SetVectActionRequest :md5sum-) "cd5ea8395bbd5a6d6460390474bdccf0")
(setf (get bd1_environment_interface::SetVectActionRequest :datatype-) "bd1_environment_interface/SetVectActionRequest")
(setf (get bd1_environment_interface::SetVectActionRequest :definition-)
      "# assume that they goas like
# [up_p_r mid_p_r feet_p_r up_p_l mid_p_l feet_p_l neck_p head_p]
float64[8] vector_action
---

")

(setf (get bd1_environment_interface::SetVectActionResponse :md5sum-) "cd5ea8395bbd5a6d6460390474bdccf0")
(setf (get bd1_environment_interface::SetVectActionResponse :datatype-) "bd1_environment_interface/SetVectActionResponse")
(setf (get bd1_environment_interface::SetVectActionResponse :definition-)
      "# assume that they goas like
# [up_p_r mid_p_r feet_p_r up_p_l mid_p_l feet_p_l neck_p head_p]
float64[8] vector_action
---

")



(provide :bd1_environment_interface/SetVectAction "cd5ea8395bbd5a6d6460390474bdccf0")


