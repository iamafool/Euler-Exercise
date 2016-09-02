(defun s26 ()
  ""
  (loop for i from 1 to 1000
	   do
	   (if (primep i) 
		   (multiple-value-call #'format t "~d: ~d~&~%" i (divide 1 i :precision 1000)))))


(s26)

(defun divide (a b &key (precision 8))
  (let ((fractional 0))
    (multiple-value-bind (whole reminder)
        (floor a b)
      (unless (zerop reminder)
        (dotimes (i precision)
          (setf reminder (* reminder 10))
          (multiple-value-bind (quot rem)
              (floor reminder b)
            (setf fractional (+ (* fractional 10) quot))
            (when (zerop rem) (return))
            (setf reminder rem))))
	  fractional)))


