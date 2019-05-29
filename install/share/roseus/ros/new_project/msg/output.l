;; Auto-generated. Do not edit!


(when (boundp 'new_project::output)
  (if (not (find-package "NEW_PROJECT"))
    (make-package "NEW_PROJECT"))
  (shadow 'output (find-package "NEW_PROJECT")))
(unless (find-package "NEW_PROJECT::OUTPUT")
  (make-package "NEW_PROJECT::OUTPUT"))

(in-package "ROS")
;;//! \htmlinclude output.msg.html


(defclass new_project::output
  :super ros::object
  :slots (_output _status ))

(defmethod new_project::output
  (:init
   (&key
    ((:output __output) 0.0)
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _output (float __output))
   (setq _status __status)
   self)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; float64 _output
    8
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _output
       (sys::poke _output (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _output
     (setq _output (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get new_project::output :md5sum-) "6dc767a0ee3290acb4a8a3c442cafea7")
(setf (get new_project::output :datatype-) "new_project/output")
(setf (get new_project::output :definition-)
      "float64 output
bool status
")



(provide :new_project/output "6dc767a0ee3290acb4a8a3c442cafea7")


