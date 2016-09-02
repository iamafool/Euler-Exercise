(defun s8 ()
  ""
  (let ((source-str (digits-1000)))
    (do ((x1 99999 (1- x1)))
	((< x1 11111) nil)
      (if (null (search "0" (prin1-to-string x1)))
	  (if (not (null (search (prin1-to-string x1) source-str))) (return x1))))))


(defun digits-1000 ()
  (with-output-to-string (str1)
    (with-open-file (infile1 #p"e:\\Dropbox\\lisp\\euler\\project\\8.txt")
      (do ((line (read-line infile1 nil) (read-line infile1 nil)))
	  ((null line))
	(format str1 "~a" line)))))


;;;(s8)
(* 9 9 8 7 9)

;; (defun digit-list (n)
;;   (labels ((digit-list-r (n)
;;              (if (< n 10)
;;                  (list n)
;;                  (cons (mod n 10)
;;                        (digit-list-r (floor (/ n 10)))))))
;;     (nreverse (digit-list-r n))))


;; (let ((*string* (digits-1000)))
;; (loop for i from 0 below (- (length *string*) 5)
;; 	    and a = (digit-char-p (char *string* 0)) then b
;; 	    and b = (digit-char-p (char *string* 1)) then c
;; 	    and c = (digit-char-p (char *string* 2)) then d
;; 	    and d = (digit-char-p (char *string* 3)) then e
;; 	    and e = (digit-char-p (char *string* (+ i 4)))
;; 	    maximizing (* a b c d e)))

