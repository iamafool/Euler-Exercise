(defun s7 (x)
  ""
  (let ((temp-prime 1))
    (do ((i 1 (1+ i)))
	((> i x) (return temp-prime))
      (setq temp-prime (next-prime temp-prime)))))



;;;(time (s7 10001))
