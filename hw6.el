;Kyle Stoltzfus         C311 HW #6

(defun next-day (day)
  "This function takes a symbol named after a day of the week as input, i.e. ('saturday). It then
returns the symbol for the next day."
  (cond ((equal day 'monday) 'tuesday)
	((equal day 'tuesday) 'wednesday)
	((equal day 'wednesday) 'thursday)
	((equal day 'thursday) 'friday)
	((equal day 'friday) 'saturday)
	((equal day 'saturday) 'sunday)
	((equal day 'sunday) 'monday)))
next-day


(setq week '(sunday monday tuesday wednesday thursday friday saturday))
(sunday monday tuesday wednesday thursday friday saturday)

(defun random-day ()
  "This function generates a random integer between 0 and 6. It then prints the symbol of the 
day of the week that corresponds to the random integer. This function also determines the next
day of the week and prints that symbol as well."
  (let ((day (mod (random) 7)))
    (let ((next (mod (+ 1 day) 7)))
      (setq day (elt week day))
      (setq next (elt week next))
      (princ (format "Today is %s and tomorrow will be %s.\n" 
		     (capitalize (symbol-name day)) (capitalize (symbol-name next))))
      t)))
random-day

  
(defun month (start total)
  "This function prints out a calendar for any month. This function takes two parameters.
The first parameter is the day of the week that the month begins using an index between 0 and 6.
The second parameter is the total number of days in the month."
  (dolist (element week)
    (princ (format "%6s" (substring (capitalize (symbol-name element)) 0 1))))
  (dotimes (day (+ total start))
    (if (= (mod day 7) 0)
	(princ "\n"))
    (if (> (- (+ 1 day) start) 0)    
	(princ (format "%6d" (- (+ 1 day) start)))
      (princ (format "%6s" " "))))
  (princ "\n")
  t)
month



;(next-day 'monday)
;tuesday

;(next-day 'sunday)
;monday

;(next-day 'wednesday)
;thursday

;(random-day)
;Today is Thursday and tomorrow will be Friday.
;t

;(random-day)
;Today is Sunday and tomorrow will be Monday.
;t

;(random-day)
;Today is Wednesday and tomorrow will be Thursday.
;t

;(month 0 31)
;     S     M     T     W     T     F     S
;     1     2     3     4     5     6     7
;     8     9    10    11    12    13    14
;    15    16    17    18    19    20    21
;    22    23    24    25    26    27    28
;    29    30    31
;t

;(month 6 30)
;     S     M     T     W     T     F     S
;                                         1
;     2     3     4     5     6     7     8
;     9    10    11    12    13    14    15
;    16    17    18    19    20    21    22
;    23    24    25    26    27    28    29
;    30
;t

;(month 4 28)
;     S     M     T     W     T     F     S
;                             1     2     3
;     4     5     6     7     8     9    10
;    11    12    13    14    15    16    17
;    18    19    20    21    22    23    24
;    25    26    27    28
;t


