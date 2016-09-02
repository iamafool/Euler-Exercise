(defun s10 (x)
  ""
  (apply #'+ (loop for i = 2 then (next-prime i)
		while (< i x)
		collect i)))

;;;(time (s10 2000000))
