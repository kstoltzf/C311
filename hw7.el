;Kyle Stoltzfus      C311 HW #7


(defun selection-sort (A size)
  "This function implements a tail-recursive version of the selection-sort 
algorithm. It accepts an array and the size of the array as input parameters. 
If the first parameter passed in is not an array, the function will return nil.
Otherwise, the function returns the sorted array. The Lisp function length can 
be used to input the second parameter. Example call: (selection-sort x (length x))
where x is an array"
  (if (not (arrayp A)) nil
    (if (< size 2) A
      (let ((best 0))
	(dotimes (x size)
	  (if (> (elt A x) (elt A best))
	      (setq best x)))
	(let ((temp (elt A (- size 1))))
	  (aset A (- size 1) (elt A best))
	  (aset A best temp)))
      (setq size (- size 1))
      (selection-sort A size))))
selection-sort



(defun linear-search (L val)
  "This function is an iterative conversion of a tail-recursive linear search
function. It accepts a list and the value to search for as input parameters.
The function returns true if the value is in the list and nil if it is not."
  (let ((found nil))
    (while L
      (if (equal (car L) val)
	  (setq found t))
      (setq L (cdr L)))
    found))
linear-search



(defun count-val (L val number)
  "This function is a tail-recursive conversion of the recursive count-val
function. Tail recursion is achieved by introducing one new parameter. This
function keeps track of how often a specified value appears in a list. The 
input parameters are a list, a specified value, and the number of times the 
value occurs. The last parameter must be set to 0 for the initial call. It 
then updates itself through the recursive calls. The function returns the 
number of times the specified element occurs in the list."
  (cond ((not L) number)
	((equal (car L) val) (setq number (+ 1 number))
	 (count-val (cdr L) val number))
	(t (count-val (cdr L) val number))))
count-val



(defun icount-val (L val number)
  "This function is an iterative conversion of the tail-recursive count-val
function listed above. This function keeps track of how often a specified value
appears in a list. The input parameters are a list, a specified value, and the 
number of times the value occurs. The last parameter must be set to 0 when 
calling the function. The function returns the number of times the specified
element occurs in the list."
  (while L
    (if (equal (car L) val)
	(setq number (+ 1 number)))
    (setq L (cdr L)))
  number)
icount-val



;(setq a (vector 4 9 7 2 6 5 1 8 7 12 14 0))
;[4 9 7 2 6 5 1 8 7 12 14 0]

;(setq l (list 5 7 8 1 2 3 7 7))
;(5 7 8 1 2 3 7 7)

;(selection-sort a (length a))
;[0 1 2 4 5 6 7 7 8 9 12 14]

;(selection-sort l (length l))
;nil

;(linear-search l 2)
;t

;(linear-search l 6)
;nil

;(count-val l 7 0)
;3

;(count-val l 3 0)
;1

;(count-val l 9 0)
;0

;(icount-val l 7 0)
;3

;(icount-val l 3 0)
;1

;(icount-val l 9 0)
;0

