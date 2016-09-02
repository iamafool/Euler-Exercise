(defun grid100*50 ()
  (with-output-to-string (str1)
    (with-open-file (infile1 #p"e:\\Dropbox\\lisp\\euler\\project\\13.txt")
      (do ((line (read-line infile1 nil) (read-line infile1 nil)))
	  ((null line))
	(format str1 "~a " line)))))

;; (grid100*50)

(defun s13 ()
  ""
  (apply #'+ (mapcar #'parse-integer (split-by-one-space (string-trim " " (grid100*50))))))

;;;(s13)
