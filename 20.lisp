(defun s20 ()
  ""
  (apply #'+ (loop for char across (write-to-string (factorial 100))
                 collect (parse-integer (string char)))))

;;;(s20)
