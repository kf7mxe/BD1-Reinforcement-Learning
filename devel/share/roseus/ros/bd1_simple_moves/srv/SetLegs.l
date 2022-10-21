;; Auto-generated. Do not edit!


(when (boundp 'bd1_simple_moves::SetLegs)
  (if (not (find-package "BD1_SIMPLE_MOVES"))
    (make-package "BD1_SIMPLE_MOVES"))
  (shadow 'SetLegs (find-package "BD1_SIMPLE_MOVES")))
(unless (find-package "BD1_SIMPLE_MOVES::SETLEGS")
  (make-package "BD1_SIMPLE_MOVES::SETLEGS"))
(unless (find-package "BD1_SIMPLE_MOVES::SETLEGSREQUEST")
  (make-package "BD1_SIMPLE_MOVES::SETLEGSREQUEST"))
(unless (find-package "BD1_SIMPLE_MOVES::SETLEGSRESPONSE")
  (make-package "BD1_SIMPLE_MOVES::SETLEGSRESPONSE"))

(in-package "ROS")





(defclass bd1_simple_moves::SetLegsRequest
  :super ros::object
  :slots (_up_l _up_r _mid_l _mid_r _feet_l _feet_r _speed ))

(defmethod bd1_simple_moves::SetLegsRequest
  (:init
   (&key
    ((:up_l __up_l) 0.0)
    ((:up_r __up_r) 0.0)
    ((:mid_l __mid_l) 0.0)
    ((:mid_r __mid_r) 0.0)
    ((:feet_l __feet_l) 0.0)
    ((:feet_r __feet_r) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _up_l (float __up_l))
   (setq _up_r (float __up_r))
   (setq _mid_l (float __mid_l))
   (setq _mid_r (float __mid_r))
   (setq _feet_l (float __feet_l))
   (setq _feet_r (float __feet_r))
   (setq _speed (float __speed))
   self)
  (:up_l
   (&optional __up_l)
   (if __up_l (setq _up_l __up_l)) _up_l)
  (:up_r
   (&optional __up_r)
   (if __up_r (setq _up_r __up_r)) _up_r)
  (:mid_l
   (&optional __mid_l)
   (if __mid_l (setq _mid_l __mid_l)) _mid_l)
  (:mid_r
   (&optional __mid_r)
   (if __mid_r (setq _mid_r __mid_r)) _mid_r)
  (:feet_l
   (&optional __feet_l)
   (if __feet_l (setq _feet_l __feet_l)) _feet_l)
  (:feet_r
   (&optional __feet_r)
   (if __feet_r (setq _feet_r __feet_r)) _feet_r)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float64 _up_l
    8
    ;; float64 _up_r
    8
    ;; float64 _mid_l
    8
    ;; float64 _mid_r
    8
    ;; float64 _feet_l
    8
    ;; float64 _feet_r
    8
    ;; float64 _speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _up_l
       (sys::poke _up_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _up_r
       (sys::poke _up_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mid_l
       (sys::poke _mid_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mid_r
       (sys::poke _mid_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _feet_l
       (sys::poke _feet_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _feet_r
       (sys::poke _feet_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _up_l
     (setq _up_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _up_r
     (setq _up_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mid_l
     (setq _mid_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mid_r
     (setq _mid_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _feet_l
     (setq _feet_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _feet_r
     (setq _feet_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass bd1_simple_moves::SetLegsResponse
  :super ros::object
  :slots ())

(defmethod bd1_simple_moves::SetLegsResponse
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

(defclass bd1_simple_moves::SetLegs
  :super ros::object
  :slots ())

(setf (get bd1_simple_moves::SetLegs :md5sum-) "8d9a80bd490b256de1b51b4977337d66")
(setf (get bd1_simple_moves::SetLegs :datatype-) "bd1_simple_moves/SetLegs")
(setf (get bd1_simple_moves::SetLegs :request) bd1_simple_moves::SetLegsRequest)
(setf (get bd1_simple_moves::SetLegs :response) bd1_simple_moves::SetLegsResponse)

(defmethod bd1_simple_moves::SetLegsRequest
  (:response () (instance bd1_simple_moves::SetLegsResponse :init)))

(setf (get bd1_simple_moves::SetLegsRequest :md5sum-) "8d9a80bd490b256de1b51b4977337d66")
(setf (get bd1_simple_moves::SetLegsRequest :datatype-) "bd1_simple_moves/SetLegsRequest")
(setf (get bd1_simple_moves::SetLegsRequest :definition-)
      "float64 up_l
float64 up_r
float64 mid_l
float64 mid_r
float64 feet_l
float64 feet_r
float64 speed
---




")

(setf (get bd1_simple_moves::SetLegsResponse :md5sum-) "8d9a80bd490b256de1b51b4977337d66")
(setf (get bd1_simple_moves::SetLegsResponse :datatype-) "bd1_simple_moves/SetLegsResponse")
(setf (get bd1_simple_moves::SetLegsResponse :definition-)
      "float64 up_l
float64 up_r
float64 mid_l
float64 mid_r
float64 feet_l
float64 feet_r
float64 speed
---




")



(provide :bd1_simple_moves/SetLegs "8d9a80bd490b256de1b51b4977337d66")


