;; Auto-generated. Do not edit!


(when (boundp 'bd1_environment_interface::State)
  (if (not (find-package "BD1_ENVIRONMENT_INTERFACE"))
    (make-package "BD1_ENVIRONMENT_INTERFACE"))
  (shadow 'State (find-package "BD1_ENVIRONMENT_INTERFACE")))
(unless (find-package "BD1_ENVIRONMENT_INTERFACE::STATE")
  (make-package "BD1_ENVIRONMENT_INTERFACE::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html


(defclass bd1_environment_interface::State
  :super ros::object
  :slots (_up_p_r _up_p_l _mid_p_r _mid_p_l _feet_p_r _feet_p_l _feet_v_l _neck_p _head_p _pose_x _pose_y _pose_z _rot_r _rot_p _rot_y ))

(defmethod bd1_environment_interface::State
  (:init
   (&key
    ((:up_p_r __up_p_r) 0.0)
    ((:up_p_l __up_p_l) 0.0)
    ((:mid_p_r __mid_p_r) 0.0)
    ((:mid_p_l __mid_p_l) 0.0)
    ((:feet_p_r __feet_p_r) 0.0)
    ((:feet_p_l __feet_p_l) 0.0)
    ((:feet_v_l __feet_v_l) 0.0)
    ((:neck_p __neck_p) 0.0)
    ((:head_p __head_p) 0.0)
    ((:pose_x __pose_x) 0.0)
    ((:pose_y __pose_y) 0.0)
    ((:pose_z __pose_z) 0.0)
    ((:rot_r __rot_r) 0.0)
    ((:rot_p __rot_p) 0.0)
    ((:rot_y __rot_y) 0.0)
    )
   (send-super :init)
   (setq _up_p_r (float __up_p_r))
   (setq _up_p_l (float __up_p_l))
   (setq _mid_p_r (float __mid_p_r))
   (setq _mid_p_l (float __mid_p_l))
   (setq _feet_p_r (float __feet_p_r))
   (setq _feet_p_l (float __feet_p_l))
   (setq _feet_v_l (float __feet_v_l))
   (setq _neck_p (float __neck_p))
   (setq _head_p (float __head_p))
   (setq _pose_x (float __pose_x))
   (setq _pose_y (float __pose_y))
   (setq _pose_z (float __pose_z))
   (setq _rot_r (float __rot_r))
   (setq _rot_p (float __rot_p))
   (setq _rot_y (float __rot_y))
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
  (:feet_v_l
   (&optional __feet_v_l)
   (if __feet_v_l (setq _feet_v_l __feet_v_l)) _feet_v_l)
  (:neck_p
   (&optional __neck_p)
   (if __neck_p (setq _neck_p __neck_p)) _neck_p)
  (:head_p
   (&optional __head_p)
   (if __head_p (setq _head_p __head_p)) _head_p)
  (:pose_x
   (&optional __pose_x)
   (if __pose_x (setq _pose_x __pose_x)) _pose_x)
  (:pose_y
   (&optional __pose_y)
   (if __pose_y (setq _pose_y __pose_y)) _pose_y)
  (:pose_z
   (&optional __pose_z)
   (if __pose_z (setq _pose_z __pose_z)) _pose_z)
  (:rot_r
   (&optional __rot_r)
   (if __rot_r (setq _rot_r __rot_r)) _rot_r)
  (:rot_p
   (&optional __rot_p)
   (if __rot_p (setq _rot_p __rot_p)) _rot_p)
  (:rot_y
   (&optional __rot_y)
   (if __rot_y (setq _rot_y __rot_y)) _rot_y)
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
    ;; float64 _feet_v_l
    8
    ;; float64 _neck_p
    8
    ;; float64 _head_p
    8
    ;; float64 _pose_x
    8
    ;; float64 _pose_y
    8
    ;; float64 _pose_z
    8
    ;; float64 _rot_r
    8
    ;; float64 _rot_p
    8
    ;; float64 _rot_y
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
     ;; float64 _feet_v_l
       (sys::poke _feet_v_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _neck_p
       (sys::poke _neck_p (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _head_p
       (sys::poke _head_p (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pose_x
       (sys::poke _pose_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pose_y
       (sys::poke _pose_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pose_z
       (sys::poke _pose_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rot_r
       (sys::poke _rot_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rot_p
       (sys::poke _rot_p (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rot_y
       (sys::poke _rot_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _feet_v_l
     (setq _feet_v_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _neck_p
     (setq _neck_p (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _head_p
     (setq _head_p (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pose_x
     (setq _pose_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pose_y
     (setq _pose_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pose_z
     (setq _pose_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rot_r
     (setq _rot_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rot_p
     (setq _rot_p (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rot_y
     (setq _rot_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get bd1_environment_interface::State :md5sum-) "afe803c2f32ba818ba517f29ac23821c")
(setf (get bd1_environment_interface::State :datatype-) "bd1_environment_interface/State")
(setf (get bd1_environment_interface::State :definition-)
      "float64 up_p_r
float64 up_p_l
float64 mid_p_r
float64 mid_p_l
float64 feet_p_r
float64 feet_p_l

#float64 up_v_r
#float64 up_v_l
#float64 mid_v_r
#float64 mid_v_l
#float64 feet_v_r
float64 feet_v_l

float64 neck_p
#float64 neck_v
float64 head_p
#float64 head_v

float64 pose_x
float64 pose_y
float64 pose_z
float64 rot_r
float64 rot_p
float64 rot_y


")



(provide :bd1_environment_interface/State "afe803c2f32ba818ba517f29ac23821c")


