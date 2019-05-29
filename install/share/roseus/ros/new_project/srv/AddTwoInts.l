;; Auto-generated. Do not edit!


(when (boundp 'new_project::AddTwoInts)
  (if (not (find-package "NEW_PROJECT"))
    (make-package "NEW_PROJECT"))
  (shadow 'AddTwoInts (find-package "NEW_PROJECT")))
(unless (find-package "NEW_PROJECT::ADDTWOINTS")
  (make-package "NEW_PROJECT::ADDTWOINTS"))
(unless (find-package "NEW_PROJECT::ADDTWOINTSREQUEST")
  (make-package "NEW_PROJECT::ADDTWOINTSREQUEST"))
(unless (find-package "NEW_PROJECT::ADDTWOINTSRESPONSE")
  (make-package "NEW_PROJECT::ADDTWOINTSRESPONSE"))

(in-package "ROS")





(defclass new_project::AddTwoIntsRequest
  :super ros::object
  :slots (_a _b _c ))

(defmethod new_project::AddTwoIntsRequest
  (:init
   (&key
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:c __c) 0)
    )
   (send-super :init)
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _c (round __c))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:serialization-length
   ()
   (+
    ;; float64 _a
    8
    ;; float64 _b
    8
    ;; int64 _c
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b
       (sys::poke _b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _c
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _c (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _c) (= (length (_c . bv)) 2)) ;; bignum
              (write-long (ash (elt (_c . bv) 0) 0) s)
              (write-long (ash (elt (_c . bv) 1) -1) s))
             ((and (class _c) (= (length (_c . bv)) 1)) ;; big1
              (write-long (elt (_c . bv) 0) s)
              (write-long (if (>= _c 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _c s)(write-long (if (>= _c 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b
     (setq _b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _c
#+(or :alpha :irix6 :x86_64)
      (setf _c (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _c (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass new_project::AddTwoIntsResponse
  :super ros::object
  :slots (_result1 _result2 ))

(defmethod new_project::AddTwoIntsResponse
  (:init
   (&key
    ((:result1 __result1) 0.0)
    ((:result2 __result2) nil)
    )
   (send-super :init)
   (setq _result1 (float __result1))
   (setq _result2 __result2)
   self)
  (:result1
   (&optional __result1)
   (if __result1 (setq _result1 __result1)) _result1)
  (:result2
   (&optional __result2)
   (if __result2 (setq _result2 __result2)) _result2)
  (:serialization-length
   ()
   (+
    ;; float64 _result1
    8
    ;; bool _result2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _result1
       (sys::poke _result1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _result2
       (if _result2 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _result1
     (setq _result1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _result2
     (setq _result2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass new_project::AddTwoInts
  :super ros::object
  :slots ())

(setf (get new_project::AddTwoInts :md5sum-) "f724a20c65da0ec169d6f28326602036")
(setf (get new_project::AddTwoInts :datatype-) "new_project/AddTwoInts")
(setf (get new_project::AddTwoInts :request) new_project::AddTwoIntsRequest)
(setf (get new_project::AddTwoInts :response) new_project::AddTwoIntsResponse)

(defmethod new_project::AddTwoIntsRequest
  (:response () (instance new_project::AddTwoIntsResponse :init)))

(setf (get new_project::AddTwoIntsRequest :md5sum-) "f724a20c65da0ec169d6f28326602036")
(setf (get new_project::AddTwoIntsRequest :datatype-) "new_project/AddTwoIntsRequest")
(setf (get new_project::AddTwoIntsRequest :definition-)
      "float64 a
float64 b
int64 c

---
float64 result1
bool result2

")

(setf (get new_project::AddTwoIntsResponse :md5sum-) "f724a20c65da0ec169d6f28326602036")
(setf (get new_project::AddTwoIntsResponse :datatype-) "new_project/AddTwoIntsResponse")
(setf (get new_project::AddTwoIntsResponse :definition-)
      "float64 a
float64 b
int64 c

---
float64 result1
bool result2

")



(provide :new_project/AddTwoInts "f724a20c65da0ec169d6f28326602036")


