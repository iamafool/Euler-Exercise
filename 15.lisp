
;;;(defun next-item (x1 y1 x2 y2)
;;;  ""
;;;  (if (and (= x1 x2) (= y1 y2))
;;;      (setq abc (+ 1 abc)))
;;;  (if (< x1 x2)
;;;      (next-item (+ 1 x1) y1 x2 y2))
;;;  (if (< y1 y2)
;;;      (next-item x1 (+ 1 y1) x2 y2)))
;;;
;;;


(defun next-item (x1 y1 x2 y2)
  ""
  (declare (optimize (speed 3) (safety 0)))
  (declare (fixnum x1 y1 x2 y2))
  (if (and (= x1 x2) (= y1 y2))
      (setq abc (+ 1 abc)))
  (if (< x1 x2)
      (next-item (+ 1 x1) y1 x2 y2))
  (if (< y1 y2)
      (next-item x1 (+ 1 y1) x2 y2)))

;;;(disassemble 'next-item)

;;;(setq abc 0)
;;;(time (next-item 0 0 8 8))
;;;(format t "~a~%" abc)


(defun next-item1 (x1 y1 x2 y2)
  ""
  (declare (optimize (speed 3) (safety 0)))
  (declare (fixnum x1 y1 x2 y2))
  (+ 
   (if (or (= x1 x2) (= y1 y2))
       1
     (+ (next-item1 (+ 1 x1) y1 x2 y2)
        (next-item1 x1 (+ 1 y1) x2 y2)))))

;;;(disassemble 'next-item1)

;; (next-item1 0 0 20 20)






;;;(next-item 0 0 20 20)






  


