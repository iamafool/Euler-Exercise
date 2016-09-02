;; (defun s6 (x)
;;   "the solution for problem 6"
;;   (- (expt (sum-1 x) 2) (square-sum x)))

;; (defun sum-1 (x)
;;   "square the the sum from 1 to x"
;;   (loop for i from 1 to x sum i))

;; (defun square-sum (x)
;;   ""
;;   (loop for i from 1 to x sum (expt i 2)))


;; (time (s6 1000000))

(defun s6 (x)
  ""
  (- (expt (/ (* x (+ x 1)) 2) 2) (/ (* (+ (* 2 x) 1) (+ x 1) x) 6)))

;;;(time (s6 100))
