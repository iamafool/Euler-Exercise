;; (+ (* 2 (factorial 9)) (* 6 (factorial 8)) (* 6 (factorial 7)) (* 2 (factorial 6)) (* 5 (factorial 5))
;; 			(* 1 (factorial 4)) (* 2 (factorial 3)) (* 2 (factorial 2)))

;; The answer is 2783915460.
(defun print-str (str)
  ""
  (format t "~a~%" (sort str #'char>)))


(defun s24 (digits nth-num)
  ""
  (let* ((num-digits (length digits))
		 (nd (1- num-digits))
		 (fact-nd (factorial nd))
		 (mod01 (mod nth-num (factorial nd)))
		 (index (floor (/ nth-num fact-nd))))
	(if (> mod01 0)
		(let* ((char01 (char digits index))
			   (digits (remove char01 digits)))
		  (format t "~C" char01)
		  (s24 digits mod01))
		(let* ((char02 (char digits (1- index)))
			   (digits (remove char02 digits)))
		  (format t "~C" char02)
		  (print-str digits)))))

(time (s24 "0123456789" 1000000))

;; (s24 "0123456789" (* 2 (factorial 9)))

