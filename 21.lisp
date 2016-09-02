(defun s21 ()
  ""
  (declare (optimize (speed 3) (safety 0)))
  (setq sum1 0)
  (loop for i from 2 to 9999
      do
        (let ((sum-pd-i (- (sum-divisors (primfac i)) i)))
          (if (and (> sum-pd-i i)
                   (= i (- (sum-divisors (primfac sum-pd-i)) sum-pd-i)))
              (setq sum1 (+ sum1 i sum-pd-i)))))
  sum1)

;;;(time (s21))
