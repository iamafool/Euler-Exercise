(eval-when (compile)
  (declaim (optimize (speed 3) (safety 1) (space 0)
                     (debug 0))))

(defun triangle-number (n)
  "the nth triangle number"
  (/ (* (+ 1 n) n) 2))

;;;(triangle-number 2)

(defun factor-num (num)
  (apply #'*
         (let* ((a (primfac num))
                (b (remove-duplicates a)))
           (loop for ele in b
               collect (1+ (count ele a))))))

(defun s12 (num)          
  (loop for x = 1 then (+ x 1)
      when (> (factor-num (triangle-number x)) num)
      return x))

;;;(time (triangle-number (s12 500)))


