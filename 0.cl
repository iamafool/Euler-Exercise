(eval-when (compile)
  (declaim (optimize (speed 3) (safety 1) (space 0)
                     (debug 0))))

(defun next-prime (x)
  "get next prime"
  (loop for i from (+ x 1)
      when (primep i) return i)) 

(defun primep (x)
  "prime or not"
  (when (> x 1)
    (loop for fac from 2 to (isqrt x) never (zerop (mod x fac)))))

(defun primfac (num) 
    (when (> num 1) 
        (do ((x 2 (1+ x)))
            ((zerop (mod num x))
                (cons x (primfac (/ num x)))))))

;; (defun num-factor (num)
;;   (if (= num 1) (list 1)
;; 	  (loop for i from 1 to (floor (/ num 2))
;; 		   when (zerop (mod num i))
;; 		   collect i)))

(defun num-factor (x)
  (let ((divs nil))
    (loop for i from 1 to (sqrt x) 
       do (when (zerop (mod x i)) 
			(push i divs)
			(let ((d (/ x i)))
			  (unless (or (= i 1) (= i d))
				(push d divs)))))
    divs))

(defun sum-divisors (lst)
  (reduce #'(lambda (a b)
              (* a (/ (1- (expt (car b) (1+ (cdr b))))
                      (1- (car b)))))
          (mapcar #'(lambda (i)
                      (cons i (count i lst)))
                  (remove-duplicates lst))
          :initial-value 1))


(defun flatten (x)
  (labels ((rec (x acc)
                (cond ((null x) acc)
                      ((atom x) (cons x acc))
                      (t (rec (car x) (rec (cdr x) acc))))))
    (rec x nil)))

(defun replace-all (string part replacement &key (test #'char=))
  "Returns a new string in which all the occurences of the part 
is replaced with replacement."
  (with-output-to-string (out)
    (loop with part-length = (length part)
        for old-pos = 0 then (+ pos part-length)
        for pos = (search part string
                          :start2 old-pos
                          :test test)
        do (write-string string out
                         :start old-pos
                         :end (or pos (length string)))
        when pos do (write-string replacement out)
        while pos))) 

(defun factorial (n)
   (if (<= n 1)
       1
     (* n (factorial (- n 1)))))

;;;(factorial 100)

(defun create-fibseq (init-list max-value)
  "create the Fibonacci sequence"
  (let ((r-init-list (nreverse init-list)))
    (loop while (< (first r-init-list) max-value) do
    (setq r-init-list (create-fibseq-ele r-init-list)))
    (nreverse (cdr r-init-list))))


(defun create-fibseq-ele (init-list)
  "create the Fibonacci sequence element"
  (cons (+ (first init-list) (second init-list)) init-list))
