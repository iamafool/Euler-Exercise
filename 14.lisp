(defvar *table*)

(defun comp-next-ele (num)
  "if the last element is even, num/2"
  (cond ((evenp num) (/ num 2))
        ((oddp num) (1+ (* num 3)))))

(setq *table* (make-hash-table))

(defun collatz-length (num)
  "the chain of collatz problem"
  (let ((look1 (gethash num *table*)))
    (if look1
        look1
      (setf (gethash num *table*)
        (if (eq num 1)
            1
          (1+ (collatz-length (comp-next-ele num))))))))

(defun s14 ()
  ""
  (let ((max-collatz-length
         (loop for x from 999999 downto 1
             maximize (collatz-length x))))
    (maphash #'(lambda (key value) (when (= value max-collatz-length) (print (list key value)))) *table*)))

;;;(time (s14))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun collatz-sequence (start)
  (loop for n = start then (if (evenp n)
			       (/ n 2)
			     (1+ (* n 3)))
	collect n
	until (= 1 n)))

(defun problem-14 ()
  (loop for x from 1000000 downto 1
	and prev-max = 0 then max
	and num = x then (if (> max prev-max) x num)
	maximizing (length (collatz-sequence x)) into max
      finally (return num)))

;;;(problem-14)

(defun euler14 (&optional (limit 1000000))
  (let ((mx 1)
        (n 1)
        (steps 0))
    (do ((i 1 (+ i 1))) ((= i limit) n)
      (setf steps (count-collatz-steps i))
      (when (< mx steps)
        (setf n i)
        (setf mx steps)))))

(defun count-collatz-steps (n)
  (if (= 1 n)
      1
    (if (evenp n)
        (+ 1 (count-collatz-steps (/ n 2)))
      (+ 1 (count-collatz-steps (+ 1 (* 3 n)))))))

;;;(euler14)