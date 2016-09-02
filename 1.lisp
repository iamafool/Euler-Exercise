(defun s1 (x)
  "the solution for problem 1"
  (loop for i from 1 to (- x 1)
     sum (if (or (eq (mod i 3) 0) (eq (mod i 5) 0)) i 0)))

#(time (s1 1000))
