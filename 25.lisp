(defun s25 (num-digits)
  ""
  (let ((seq (cons 1 1)))
	(loop for i from 3
		 do
		 (setq seq (cons (cdr seq) (+ (car seq) (cdr seq))))
		 ;; (format t "~a: ~a~%" i seq)
	   until (equal (length (format nil "~a" (cdr seq))) num-digits)
	   finally (format t "~%~a~%" i))))



(s25 1000)
