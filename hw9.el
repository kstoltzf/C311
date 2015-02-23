;Kyle Stoltzfus
;C311 HW #9
;4/8/14

(defun replace (L y z)
  "This function replaces all occurences of an object in
a list with a new object. The first parameter is the list
to be searched. The second parameter is the object to 
search for. The third parameter is the object to be 
inserted when the object bein searched for is found.
This function works with lists of any type, but will
not work with with objects in nested lists."
  (setq evaluate 
	(lambda (x)
	   (if (equal x y) z
	     x)))
  (mapcar evaluate L)) 
  ;applies the function to the entire list
replace

;(replace '(1 2 3 4 5 3) 3 1)
;(1 2 1 4 5 1)

;(replace '(bird plane bee tree bird) 'bird 'hello)
;(hello plane bee tree hello)


(defun root (T) "The root of the tree."
  (if T (car T)))
root

(defun left-subtree (T) 
  "The left subtree, also a list."
  (if (and T (cdr T))
    (car (cdr T)))) ; (cadr T)
left-subtree

(defun right-subtree (T) 
  "The right subtree, also a list."
  (if (> (length T) 2)
    (car (cdr (cdr T))))) ; (caddr T)
right-subtree

;(setq x '(23 (51 (18) (33 (5) )) (7 () (10))))
;(23 (51 (18) (33 (5))) (7 nil (10)))


(defun print-inorder (T)
  "Prints the tree in order. L - Root - R"
  (if T
      (progn
        (print-inorder (left-subtree T))
	(mapc 'princ (list (root T) " "))
        (print-inorder (right-subtree T)))))
print-inorder

;(print-inorder x)
;18 51 5 33 23 7 10 nil

(defun iprint-inorder (T)
  "Prints the tree in order without using recursion. L - Root - R.
Uses a stack of frames to keep track of which action should be 
performed next."
  (let ((stackT nil) (frame nil) (state nil))
    (push (cons T 'left) stackT)
    (while stackT
      (setq frame (pop stackT))
      (setq T (car frame))
      (setq state (cdr frame))
      (if T
	  (cond ((eq state 'left) 
		 (push (cons T 'root) stackT)
		 (push (cons (left-subtree T) 'left) stackT))
		((eq state 'root)
		 (my-print (root T) " ")
		 (push (cons T 'right) stackT)
		 (push (cons (right-subtree T) 'left) stackT))
		((eq state 'right)))))))
iprint-inorder

;(iprint-inorder x)
;18 51 5 33 23 7 10 nil

(defun my-print (&rest L)
  "Prints any number of arguments with princ and returns true."
  (mapc 'princ L) t) ; my-print
my-print




