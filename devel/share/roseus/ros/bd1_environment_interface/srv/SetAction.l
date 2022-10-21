;; Auto-generated. Do not edit!


(when (boundp 'bd1_environment_interface::SetAction)
  (if (not (find-package "BD1_ENVIRONMENT_INTERFACE"))
    (make-package "BD1_ENVIRONMENT_INTERFACE"))
  (shadow 'SetAction (find-package "BD1_ENVIRONMENT_INTERFACE")))
(unless (find-package "BD1_ENVIRONMENT_INTERFACE::SETACTION")
  (make-package "BD1_ENVIRONMENT_INTERFACE::SETACTION"))
(unless (find-package "BD1_ENVIRONMENT_INTERFACE::SETACTIONREQUEST")
  (make-package "BD1_ENVIRONMENT_INTERFACE::SETACTIONREQUEST"))
(unless (find-package "BD1_ENVIRONMENT_INTERFACE::SETACTIONRESPONSE")
  (make-package "BD1_ENVIRONMENT_INTERFACE::SETACTIONRESPONSE"))

(in-package "ROS")





(defclass bd1_environment_interface::SetActionRequest
  :super ros::object
  :slots (_up_p_r _up_p_l _mid_p_r _mid_p_l _feet_p_r _feet_p_l _up_v_r _up_v_l _mid_v_r _mid_v_l _feet_v_r _feet_v_l _neck_p _neck_v _head_p _head_v ))

(defmethod bd1_environment_interface::SetActionRequest
  (:init
   (&key
    ((:up_p_r __up_p_r) 0.0)
    ((:up_p_l __up_p_l) 0.0)
    ((:mid_p_r __mid_p_r) 0.0)
    ((:mid_p_l __mid_p_l) 0.0)
    ((:feet_p_r __feet_p_r) 0.0)
    ((:feet_p_l __feet_p_l) 0.0)
    ((:up_v_r __up_v_r) 0.0)
    ((:up_v_l __up_v_l) 0.0)
    ((:mid_v_r __mid_v_r) 0.0)
    ((:mid_v_l __mid_v_l) 0.0)
    ((:feet_v_r __feet_v_r) 0.0)
    ((:feet_v_l __feet_v_l) 0.0)
    ((:neck_p __neck_p) 0.0)
    ((:neck_v __neck_v) 0.0)
    ((:head_p __head_p) 0.0)
    ((:head_v __head_v) 0.0)
    )
   (send-super :init)
   (setq _up_p_r (float __up_p_r))
   (setq _up_p_l (float __up_p_l))
   (setq _mid_p_r (float __mid_p_r))
   (setq _mid_p_l (float __mid_p_l))
   (setq _feet_p_r (float __feet_p_r))
   (setq _feet_p_l (float __feet_p_l))
   (setq _up_v_r (float __up_v_r))
   (setq _up_v_l (float __up_v_l))
   (setq _mid_v_r (float __mid_v_r))
   (setq _mid_v_l (float __mid_v_l))
   (setq _feet_v_r (float __feet_v_r))
   (setq _feet_v_l (float __feet_v_l))
   (setq _neck_p (float __neck_p))
   (setq _neck_v (float __neck_v))
   (setq _head_p (float __head_p))
   (setq _head_v (float __head_v))
   self)
  (:up_p_r
   (&optional __up_p_r)
   (if __up_p_r (setq _up_p_r __up_p_r)) _up_p_r)
  (:up_p_l
   (&optional __up_p_l)
   (if __up_p_l (setq _up_p_l __up_p_l)) _up_p_l)
  (:mid_p_r
   (&optional __mid_p_r)
   (if __mid_p_r (setq _mid_p_r __mid_p_r)) _mid_p_r)
  (:mid_p_l
   (&optional __mid_p_l)
   (if __mid_p_l (setq _mid_p_l __mid_p_l)) _mid_p_l)
  (:feet_p_r
   (&optional __feet_p_r)
   (if __feet_p_r (setq _feet_p_r __feet_p_r)) _feet_p_r)
  (:feet_p_l
   (&optional __feet_p_l)
   (if __feet_p_l (setq _feet_p_l __feet_p_l)) _feet_p_l)
  (:up_v_r
   (&optional __up_v_r)
   (if __up_v_r (setq _up_v_r __up_v_r)) _up_v_r)
  (:up_v_l
   (&optional __up_v_l)
   (if __up_v_l (setq _up_v_l __up_v_l)) _up_v_l)
  (:mid_v_r
   (&optional __mid_v_r)
   (if __mid_v_r (setq _mid_v_r __mid_v_r)) _mid_v_r)
  (:mid_v_l
   (&optional __mid_v_l)
   (if __mid_v_l (setq _mid_v_l __mid_v_l)) _mid_v_l)
  (:feet_v_r
   (&optional __feet_v_r)
   (if __feet_v_r (setq _feet_v_r __feet_v_r)) _feet_v_r)
  (:feet_v_l
   (&optional __feet_v_l)
   (if __feet_v_l (setq _feet_v_l __feet_v_l)) _feet_v_l)
  (:neck_p
   (&optional __neck_p)
   (if __neck_p (setq _neck_p __neck_p)) _neck_p)
  (:neck_v
   (&optional __neck_v)
   (if __neck_v (setq _neck_v __neck_v)) _neck_v)
  (:head_p
   (&optional __head_p)
   (if __head_p (setq _head_p __head_p)) _head_p)
  (:head_v
   (&optional __head_v)
   (if __head_v (setq _head_v __head_v)) _head_v)
  (:serialization-length
   ()
   (+
    ;; float64 _up_p_r
    8
    ;; float64 _up_p_l
    8
    ;; float64 _mid_p_r
    8
    ;; float64 _mid_p_l
    8
    ;; float64 _feet_p_r
    8
    ;; float64 _feet_p_l
    8
    ;; float64 _up_v_r
    8
    ;; float64 _up_v_l
    8
    ;; float64 _mid_v_r
    8
    ;; float64 _mid_v_l
    8
    ;; float64 _feet_v_r
    8
    ;; float64 _feet_v_l
    8
    ;; float64 _neck_p
    8
    ;; float64 _neck_v
    8
    ;; float64 _head_p
    8
    ;; float64 _head_v
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _up_p_r
       (sys::poke _up_p_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _up_p_l
       (sys::poke _up_p_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mid_p_r
       (sys::poke _mid_p_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mid_p_l
       (sys::poke _mid_p_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _feet_p_r
       (sys::poke _feet_p_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _feet_p_l
       (sys::poke _feet_p_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _up_v_r
       (sys::poke _up_v_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _up_v_l
       (sys::poke _up_v_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mid_v_r
       (sys::poke _mid_v_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mid_v_l
       (sys::poke _mid_v_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _feet_v_r
       (sys::poke _feet_v_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _feet_v_l
       (sys::poke _feet_v_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _neck_p
       (sys::poke _neck_p (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _neck_v
       (sys::poke _neck_v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _head_p
       (sys::poke _head_p (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _head_v
       (sys::poke _head_v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _up_p_r
     (setq _up_p_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _up_p_l
     (setq _up_p_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mid_p_r
     (setq _mid_p_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mid_p_l
     (setq _mid_p_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _feet_p_r
     (setq _feet_p_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _feet_p_l
     (setq _feet_p_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _up_v_r
     (setq _up_v_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _up_v_l
     (setq _up_v_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mid_v_r
     (setq _mid_v_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mid_v_l
     (setq _mid_v_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _feet_v_r
     (setq _feet_v_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _feet_v_l
     (setq _feet_v_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _neck_p
     (setq _neck_p (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _neck_v
     (setq _neck_v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _head_p
     (setq _head_p (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _head_v
     (setq _head_v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass bd1_environment_interface::SetActionResponse
  :super ros::object
  :slots ())

(defmethod bd1_environment_interface::SetActionResponse
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

(defclass bd1_environment_interface::SetAction
  :super ros::object
  :slots ())

(setf (get bd1_environment_interface::SetAction :md5sum-) "971ec173ddadd49b8b050bf728686fd8")
(setf (get bd1_environment_interface::SetAction :datatype-) "bd1_environment_interface/SetAction")
(setf (get bd1_environment_interface::SetAction :request) bd1_environment_interface::SetActionRequest)
(setf (get bd1_environment_interface::SetAction :response) bd1_environment_interface::SetActionResponse)

(defmethod bd1_environment_interface::SetActionRequest
  (:response () (instance bd1_environment_interface::SetActionResponse :init)))

(setf (get bd1_environment_interface::SetActionRequest :md5sum-) "971ec173ddadd49b8b050bf728686fd8")
(setf (get bd1_environment_interface::SetActionRequest :datatype-) "bd1_environment_interface/SetActionRequest")
(setf (get bd1_environment_interface::SetActionRequest :definition-)
      "float64 up_p_r
float64 up_p_l
float64 mid_p_r
float64 mid_p_l
float64 feet_p_r
float64 feet_p_l

float64 up_v_r
float64 up_v_l
float64 mid_v_r
float64 mid_v_l
float64 feet_v_r
float64 feet_v_l

float64 neck_p
float64 neck_v
float64 head_p
float64 head_v
---

")

(setf (get bd1_environment_interface::SetActionResponse :md5sum-) "971ec173ddadd49b8b050bf728686fd8")
(setf (get bd1_environment_interface::SetActionResponse :datatype-) "bd1_environment_interface/SetActionResponse")
(setf (get bd1_environment_interface::SetActionResponse :definition-)
      "float64 up_p_r
float64 up_p_l
float64 mid_p_r
float64 mid_p_l
float64 feet_p_r
float64 feet_p_l

float64 up_v_r
float64 up_v_l
float64 mid_v_r
float64 mid_v_l
float64 feet_v_r
float64 feet_v_l

float64 neck_p
float64 neck_v
float64 head_p
float64 head_v
---

")



(provide :bd1_environment_interface/SetAction "971ec173ddadd49b8b050bf728686fd8")


