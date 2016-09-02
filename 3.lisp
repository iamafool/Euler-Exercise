(defun s3 (x)
  "the solution for problem 3"
  (do ((i 2 (next-prime i)))
      ((primep  x) x)
    (let ((f (factor1 x i)))
      (if (not (null f))
	  (setq x f)))))


(defun factor1 (x y)
  "get the factor"
  (if (zerop (mod x y))
      (/ x y)))

;; (factor1 35 5)

;; (trace prime-factor)

;;;(s3 35)
;;;(s3 13195)
;;;(time (s3 600851475143))

;;;(time (primfac 600851475143))

	  
