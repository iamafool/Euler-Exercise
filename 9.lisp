(defun s9 ()
  ""
  (apply #'* (let ((done nil))
    (do ((a 1 (1+ a)))
	((not (null done)) done)
      (if (and (< (/ 1000 a) 500) (eq (mod 1000 a) 0))
	  (do* ((b (1+ a) (1+ b))
	       (c (- 1000 a b) (- 1000 a b)))
	      ((>= b c) nil)
	    (if (eq (+ (expt a 2) (expt b 2)) (expt c 2)) (setq done (list a b c)))))))))

;;;(time (s9))




