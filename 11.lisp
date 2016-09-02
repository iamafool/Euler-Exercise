(defun split-by-one-space (string)
    "Returns a list of substrings of string divided by ONE space each.
Note: Two consecutive spaces will be seen as if there were an empty string between them."
    (loop for i = 0 then (1+ j)
          as j = (position #\Space string :start i)
          collect (subseq string i j)
          while j))

(defun grid20*20 ()
  (with-output-to-string (str1)
    (with-open-file (infile1 #p"c:\\Dropbox\\lisp\\euler\\project\\11.txt")
      (do ((line (read-line infile1 nil) (read-line infile1 nil)))
	  ((null line))
	(format str1 "~a " line)))))

;; (grid20*20)


(let* ((array01 (make-array 400 :element-type '(string 2) :initial-contents (split-by-one-space (string-trim " " (grid20*20))) :adjustable t))
       (array02 (make-array '(20 20) :displaced-to array01)))
  (max
   (loop for j from 0 by 1 to 19
      maximize (loop for i from 0 by 1 to 16
		  maximize 
		    (* (parse-integer (aref array02 j i))
		       (parse-integer (aref array02 j (+ i 1)))
		       (parse-integer (aref array02 j (+ i 2)))
		       (parse-integer (aref array02 j (+ i 3))))))

   (loop for i from 0 by 1 to 16
      maximize (loop for j from 0 by 1 to 19
		  maximize 
		    (* (parse-integer (aref array02 i j))
		       (parse-integer (aref array02 (+ i 1) j))
		       (parse-integer (aref array02 (+ i 2) j))
		       (parse-integer (aref array02 (+ i 3) j)))))

   (loop for j from 0 by 1 to 16
      maximize (loop for i from 0 by 1 to 16
		  maximize 
		    (* (parse-integer (aref array02 j i))
		       (parse-integer (aref array02 j (+ i 1)))
		       (parse-integer (aref array02 j (+ i 2)))
		       (parse-integer (aref array02 j (+ i 3))))))

   (loop for j from 0 by 1 to 16
      maximize (loop for i from 3 by 1 to 19
		  maximize 
		    (* (parse-integer (aref array02 j i))
		       (parse-integer (aref array02 (+ j 1) (- i 1)))
		       (parse-integer (aref array02 (+ j 2) (- i 2)))
		       (parse-integer (aref array02 (+ j 3) (- i 3))))))))




