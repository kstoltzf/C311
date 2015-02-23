;Kyle Stoltzfus  C311  HW #2

(setq first 2 second 5)
5

(defvar third -8.3 "This is the third variable declared and has a value of -8.3")
third

(expt first second)
32

(random second)
3

(abs third)
8.3

(cos second)
0.28366218546322625

(truncate third second)
1

;; truncate is a built-in function in `C source code'.
;; (truncate ARG &optional DIVISOR)
;; Truncate a floating point number to an int.
;; Rounds ARG toward zero.
;; With optional DIVISOR, truncate ARG/DIVISOR.


(defun sumList (input sum)
  "Computes the sum of a list of numbers"
  (cond ((and (car input) (cdr input))
	 (progn (setq sum (+ sum (car input)))
		(sumList (cdr input) sum)))
        ((car input) (+ sum (car input)))))
sumList

(defun isInList (list value)
  "Checks a list to see if a certain value is in it"
  (if (car list)
      (cond ((equal (car list) value))
	    (t (isInList (cdr list) value)))))
isInList

(defun median (x y z)
  "Finds the median of the three values"
  (cond ((and (< x y) (< x z)) (setq min x))
	((and (< y x) (< y z)) (setq min y))
        (t (setq min z)))

  (cond ((and (> x y) (> x z)) (setq max x))
	((and (> y x) (> y z)) (setq max y))
	(t (setq max z)))

  (cond ((and (> x min) (< x max)) (setq med x))
	((and (> y min) (< y max)) (setq med y))
	(t (setq med z))))
median



;(setq sum 0)
;0

;(setq empty (list))
;nil

;(setq list1 (list 1))
;(1)

;(setq list2 (list 2 3 5 8 1))
;(2 3 5 8 1)

;(sumList list1 sum)
;1

;(sumList list2 sum)
;19

;(isInList empty 2)
;nil

;(isInList list1 1)
;t

;(isInList list2 1)
;t

;(isInList list2 3)
;t

;(isInList list2 7)
;nil

;(median 2 4 6)
;4

;(median 4 6 2)
;4

;(median 3 9 5)
;5







