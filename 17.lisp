
(defun num-to-str (num)
  ""
  (let ((abc
         (replace-all
          (with-output-to-string (str1)
            (format str1 "~r" num))
          "hundred "
          "hundred and ")))
    (delete #\Space abc)
    (delete #\- abc)))

(defun s17 ()
  ""
  (loop for i from 1 to 1000
      sum (length (num-to-str i))))

(s17)



