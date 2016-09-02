(defclass num-triangle ()
  ((levels
    :initarg :levels
    :initform 3)
   (flat-data
    :initarg :flat-data
    :initform (list 1 2 3 4 5 6))))

(defparameter *abc*
  (make-instance 'num-triangle))

(slot-value *abc* 'levels)
(slot-value *abc* 'flat-data)

