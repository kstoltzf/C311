(defun scalar (first second)
  "This function finds the scalar product of two lists. The lists can be 
different lengths. If an empty list is passed in as a parameter, the function
will return 0."
  (if (or (not first) (not second)) 0
    (+ (* (car first) (car second)) (scalar (cdr first) (cdr second)))))
scalar

(defun element-i (input element)
  "This function returns the element at a specified index of a list.
Normal counting is assumed for index input, i.e. telling the function to 
return index 1 will return the first element. If the index is higher than 
the list length, nill will be returned."
  (if input
      (dotimes (x (- element 1) (car input))
	(pop input))))
element-i

(defun isSorted (input)
  "This function determines if a list is sorted in ascending order."
  (if (or (not input) (not (cdr input))) t
    (and (< (car input) (car (cdr input))) (isSorted (cdr input)))))
isSorted

(defun reverse (original)
  "This function outputs the reverse of the list that is input. If an empty
list is passed in, the function will return nill."
  (let ((reverse ()))
    (dolist (element original reverse)
      (setq reverse (cons element reverse)))))
reverse


;(setq test (list 1 2 3))
;(1 2 3)

;(setq test2 (list 1 3 7 5))
;(1 3 7 5)

;(setq empty ())
;nil

;(scalar test test)
;14

;(scalar test test2)
;28

;(scalar test empty)
;0

;(element-i test 1)
;1

;(element-i test 3)
;3

;(element-i test 8)
;nil

;(isSorted test)
;t

;(isSorted test2)
;1nil

;(isSorted empty)
;t

;(reverse test)
;(3 2 1)

;(reverse test2)
;(5 7 3 1)

;(reverse empty)
;nil



