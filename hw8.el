;Kyle Stoltzfus        
;C311 HW #8

(defun product (&rest L)
  "This function receives and unlimited number of parameters
and computes the product of all of them that are numbers. If 
no numbers are passed in as arguments, the function will return
0. If only one number is passed in as an argument, the function
will return that number."
  (let ((result 0))
    (while L
      (if (numberp (car L))
	  (cond ((= result 0) (setq result (car L)))  ;first number in list
		(t (setq result (* result (car L))))))
      (setq L (cdr L)))
    result))
product


(setq counter 0)
0

(defun comb (n m)
  "This function uses recursion to calculate the 
number of possible combinations."
  (setq counter (+ 1 counter))
  (cond
   ((= n m) 1)
   ((= m 0) 1)
   (t (+ (comb (- n 1) m)
         (comb (- n 1) (- m 1))))))
comb


(defun el10 (n m)
  (+ (* n 10) m))
el10

(setq C (make-vector 100 nil))
[nil nil nil nil nil nil nil nil nil nil nil nil ...]

(defun comb1 (n m)
  "This function uses dynamic programming to calculate the
number of possible combinations."
  (setq counter (+ 1 counter))
  (let ((res 0))
    (if (setq res (elt C (el10 n m))) res
      (setq res  ; else
            (cond
             ((= n m) 1)
             ((= m 0) 1)
             (t (+ (comb1 (- n 1) m)
                   (comb1 (- n 1) 
                          (- m 1))))))
      (aset C (el10 n m) res))))
comb1


(defun f (n)
  "This function uses recursion to compute f(n):
F(0) = 0, F(1) = 1, F(2) = 1, F(n) = f(n-1) + f(n-3)"
  (cond ((= 0 n) 0)
	((< n 3) 1)
	(t (+ (f (- n 1)) (f (- n 2))))))
f


(setq A (make-vector 20 nil))
[nil nil nil nil nil nil nil nil nil nil nil nil ...]

(defun df (n)
  "This function uses dynamic programming to compute f(n):
F(0) = 0, F(1) = 1, F(2) = 1, F(n) = f(n-1) + f(n-3).
The argument passed in (n) must be less than 20 for this  
function to work correctly."
  (let ((res 0))
    (if (setq res (elt A n)) res
      (setq res (cond ((= 0 n) 0)
		      ((< n 3) 1)
		      (t (+ (f (- n 1)) (f (- n 2)))))))
    (aset A n res)))
df


(defun driver (L value)
  "This function is a driver function that is needed for
the deep_search function to operate correctly.
Arguments:
L = any list
value = the value to search for

Returns:
t - if value is found
nil- if value is not found or L is an empty list"
  (catch 'found 
    (deep_search L value)))
driver

(defun deep_search (L value)
  "This function performs a deep search on a list. This function
will find the desired value even if it is inside a list that is an 
element of the list being passed in. For example,
deep_search( '(1 2 3 '(4 5)) 5) will return t.
Arguments:
L= any list
value= the value to search for

Returns:
t - if value is found
nil - if value is not found or L is an empty list"
  (if (not L) nil
    (if (equal (car L) value) (throw 'found t)
      (cond ((null L) nil)
	    ((listp (car L)) 
	     (deep_search (car L) value)
	     (deep_search (cdr L) value))
	    (t (deep_search (cdr L) value))))))
deep_search

;(product 'a 's)
;0

;(product 'q 1)
;1

;(product)
;0

;(product 2 't 'y 5)
;10

;(funcall 'product 3 5 's)
;15

;(funcall 'product 'd 'f 4 1)
;4

;(apply 'product '(3 5 's))
;15

;(apply 'product '('d 'f 4 1))
;4

;(comb 5 2)
;10

;counter
;19

;(setq counter 0)
;0

;(comb1 5 2)
;10

;counter
;13

;(setq counter 0)
;0

;(comb 6 3)
;20

;counter
;39

;(setq counter 0)
;0

;(comb1 6 3)
;20

;counter
;7
 
;(setq counter 0)
;0

;(comb1 6 3)
;20

;counter
;1

;(f 0)
;0

;(f 1)
;1

;(f 2)
;1

;(f 6)
;8

;(df 0)
;0

;(df 1)
;1

;(df 2)
;1

;(df 6)
;8

;(setq L (list 1 3 5 '(4 6 7 (2 5)) 9))
;(1 3 5 (4 6 7 (2 5)) 9)

;(setq empty ())
;nil

;(driver empty 5)
;nil

;(driver L 3)
;t
 
;(driver L 6)
;t

;(driver L 5)
;t

;(driver L 9)
;t

;(driver L 8)
;nil




