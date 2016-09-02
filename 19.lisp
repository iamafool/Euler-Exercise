(defun s19 ()
  ""
  (loop for year from 1901 to 2000
	   sum (loop for month from 1 to 12
			  with day = 1
			  count (= (day-of-week day month year) 6))))



(defun day-of-week (day month year)
    "Returns the day of the week as an integer. Monday is 0."
    (nth-value 6 (decode-universal-time (encode-universal-time 0 0 0 day month year 0) 0)))

