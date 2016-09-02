;; Using names.txt (right click and 'Save Link/Target As...'), a 46K text file
;; containing over five-thousand first names, begin by sorting it into alphabetical order.
;; Then working out the alphabetical value for each name,
;; multiply this value by its alphabetical position in the list to obtain a name score.

;; For example, when the list is sorted into alphabetical order, COLIN,
;; which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list.
;; So, COLIN would obtain a score of 938 ¡Á 53 = 49714.

;; What is the total of all the name scores in the file?

(ql:quickload "cl-csv")

(in-package :cl-user)
(use-package :cl-csv)

(defun alphabetical-value (string)
  (reduce #'+ (map 'list (lambda (arg1) (- (char-code arg1) (char-code #\A) -1)) string)))

(defun s22 ()
  (loop
	 for item01 in (sort (car (cl-csv:read-csv (merge-pathnames #P"names.txt"))) #'string-not-greaterp)
	 for i from 1
	 sum (* i (alphabetical-value item01))))

(time (s22))



