;; (defun s5 ()
;;   "the solution for problem 5"
;;   (do ((i 2520 (1+ i)))
;;       ((s5-1 i) i)))

;; (defun s5-1 (x)
;;   ""
;;   (do ((i 1 (1+ i)))
;;       ((> i 20) t)
;;     (if (not (eq (mod x i) 0) ) (return nil))))

;; (time (s5))


(defun s5 ()
  (apply #'lcm (loop for i from 1 to 20 collect i)))

;;;(time (s5))
