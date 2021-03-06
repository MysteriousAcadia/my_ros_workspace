;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::AddTwoInts)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'AddTwoInts (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::ADDTWOINTS")
  (make-package "BEGINNER_TUTORIALS::ADDTWOINTS"))
(unless (find-package "BEGINNER_TUTORIALS::ADDTWOINTSREQUEST")
  (make-package "BEGINNER_TUTORIALS::ADDTWOINTSREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::ADDTWOINTSRESPONSE")
  (make-package "BEGINNER_TUTORIALS::ADDTWOINTSRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::AddTwoIntsRequest
  :super ros::object
  :slots (_a _b _c ))

(defmethod beginner_tutorials::AddTwoIntsRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    ((:c __c) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
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
    ;; int64 _a
    8
    ;; int64 _b
    8
    ;; int64 _c
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
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
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
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

(defclass beginner_tutorials::AddTwoIntsResponse
  :super ros::object
  :slots (_result1 _result2 ))

(defmethod beginner_tutorials::AddTwoIntsResponse
  (:init
   (&key
    ((:result1 __result1) 0)
    ((:result2 __result2) nil)
    )
   (send-super :init)
   (setq _result1 (round __result1))
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
    ;; int64 _result1
    8
    ;; bool _result2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _result1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _result1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _result1) (= (length (_result1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_result1 . bv) 0) 0) s)
              (write-long (ash (elt (_result1 . bv) 1) -1) s))
             ((and (class _result1) (= (length (_result1 . bv)) 1)) ;; big1
              (write-long (elt (_result1 . bv) 0) s)
              (write-long (if (>= _result1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _result1 s)(write-long (if (>= _result1 0) 0 #xffffffff) s)))
     ;; bool _result2
       (if _result2 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _result1
#+(or :alpha :irix6 :x86_64)
      (setf _result1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _result1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _result2
     (setq _result2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass beginner_tutorials::AddTwoInts
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::AddTwoInts :md5sum-) "0c806992ffbffb2d16d47726216e0735")
(setf (get beginner_tutorials::AddTwoInts :datatype-) "beginner_tutorials/AddTwoInts")
(setf (get beginner_tutorials::AddTwoInts :request) beginner_tutorials::AddTwoIntsRequest)
(setf (get beginner_tutorials::AddTwoInts :response) beginner_tutorials::AddTwoIntsResponse)

(defmethod beginner_tutorials::AddTwoIntsRequest
  (:response () (instance beginner_tutorials::AddTwoIntsResponse :init)))

(setf (get beginner_tutorials::AddTwoIntsRequest :md5sum-) "0c806992ffbffb2d16d47726216e0735")
(setf (get beginner_tutorials::AddTwoIntsRequest :datatype-) "beginner_tutorials/AddTwoIntsRequest")
(setf (get beginner_tutorials::AddTwoIntsRequest :definition-)
      "int64 a
int64 b
int64 c

---
int64 result1
bool result2

")

(setf (get beginner_tutorials::AddTwoIntsResponse :md5sum-) "0c806992ffbffb2d16d47726216e0735")
(setf (get beginner_tutorials::AddTwoIntsResponse :datatype-) "beginner_tutorials/AddTwoIntsResponse")
(setf (get beginner_tutorials::AddTwoIntsResponse :definition-)
      "int64 a
int64 b
int64 c

---
int64 result1
bool result2

")



(provide :beginner_tutorials/AddTwoInts "0c806992ffbffb2d16d47726216e0735")


