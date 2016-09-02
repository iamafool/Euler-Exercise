(defun s4 ()
  "the solution for problem 4"
  (do ((i (* 999 999) (1- i)))
      ((and (palindromep i) (factorize-3-digits i)) i)))

(defun palindromep (x)
  "Is x a palindromic number?"
  (let* ((str1 (write-to-string x))
	 (str2 (reverse str1)))
    (string= str1 str2)))

;; (palindromep 999999)


(defun factorize-3-digits (x)
  "Can x be factorized as two 3-digits number?"
  (when (and (>= x (* 100 100)) (<= x (* 999 999)))
    (do ((i 999 (1- i)))
	(nil)
      (if (< i 100) (return nil))
      (if (and (eq (mod x i) 0) (>= 999 (/ x i) 100)) (return t)))))

;; (factorize-3-digits 998000)

;;;(time (s4))


