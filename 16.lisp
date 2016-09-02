(defun s16 ()
  ""
  (apply #'+ (loop for char across (write-to-string (expt 2 1000))
                 collect (parse-integer (string char)))))

(s16)