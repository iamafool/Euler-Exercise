(defun s2 (init-list x)
  "the solution for problem 2"
  (let ((fibseq (create-fibseq init-list x)))
    (loop for i in fibseq
     sum (if (evenp i) i 0))))


;;;(time (s2 '(1 2) 4000000))
