;; Auto-generated. Do not edit!


(when (boundp 'cthung::PrimeMsg)
  (if (not (find-package "CTHUNG"))
    (make-package "CTHUNG"))
  (shadow 'PrimeMsg (find-package "CTHUNG")))
(unless (find-package "CTHUNG::PRIMEMSG")
  (make-package "CTHUNG::PRIMEMSG"))

(in-package "ROS")
;;//! \htmlinclude PrimeMsg.msg.html


(defclass cthung::PrimeMsg
  :super ros::object
  :slots (_Number _Prime _InputID _OutputID ))

(defmethod cthung::PrimeMsg
  (:init
   (&key
    ((:Number __Number) "")
    ((:Prime __Prime) "")
    ((:InputID __InputID) "")
    ((:OutputID __OutputID) "")
    )
   (send-super :init)
   (setq _Number (string __Number))
   (setq _Prime (string __Prime))
   (setq _InputID (string __InputID))
   (setq _OutputID (string __OutputID))
   self)
  (:Number
   (&optional __Number)
   (if __Number (setq _Number __Number)) _Number)
  (:Prime
   (&optional __Prime)
   (if __Prime (setq _Prime __Prime)) _Prime)
  (:InputID
   (&optional __InputID)
   (if __InputID (setq _InputID __InputID)) _InputID)
  (:OutputID
   (&optional __OutputID)
   (if __OutputID (setq _OutputID __OutputID)) _OutputID)
  (:serialization-length
   ()
   (+
    ;; string _Number
    4 (length _Number)
    ;; string _Prime
    4 (length _Prime)
    ;; string _InputID
    4 (length _InputID)
    ;; string _OutputID
    4 (length _OutputID)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Number
       (write-long (length _Number) s) (princ _Number s)
     ;; string _Prime
       (write-long (length _Prime) s) (princ _Prime s)
     ;; string _InputID
       (write-long (length _InputID) s) (princ _InputID s)
     ;; string _OutputID
       (write-long (length _OutputID) s) (princ _OutputID s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _Prime
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Prime (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _InputID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _InputID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _OutputID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _OutputID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cthung::PrimeMsg :md5sum-) "ef51907d5528f928e78a87cf1db99905")
(setf (get cthung::PrimeMsg :datatype-) "cthung/PrimeMsg")
(setf (get cthung::PrimeMsg :definition-)
      "string Number
string Prime
string InputID
string OutputID


")



(provide :cthung/PrimeMsg "ef51907d5528f928e78a87cf1db99905")


