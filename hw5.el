;Kyle Stoltzfus                    C311 HW #5


(defun first-fit (list size)
  (if list
      (if (>= (car list) size) (car list)
	(first-fit (cdr list) size))))
first-fit


(defun best-fit (list size)
  (let ((best))
    (dolist (current list best)
      (cond ((and (>= current size) (equal best nil))  ;find element big enough
	     (setq best current))
	    ((and (>= current size) (< current best))  ;find best element 
	     (setq best current))))))
best-fit


(defun is-arithmetic (list)
  (if (or (not list) (not (cadr list))) t
    (let ((arithmetic t) (difference (- (cadr list) (car list))) (index 1))
      (dolist (current list arithmetic)
	(if (/= (+ (car list) (- (* difference index) difference)) current) ;arithmetic sequence formula
	    (setq arithmetic nil))
	(setq index (+ 1 index))
      arithmetic))))
is-arithmetic



;(setq test (list 3 6 8 4 2 1))
;(3 6 8 4 2 1)

;(setq empty())
;nil

;(setq single(list 1))
;(1)

;(setq double (list 1 4))
;(1 4)

;(setq test2 (list 0 5 10 15))
;(0 5 10 15)

;(first-fit test 7)
;8

;(first-fit test 10)
;nil

;(first-fit empty 3)
;nil

;(best-fit test 4)
;4

;(best-fit test 9)
;nil

;(best-fit empty 2)
;nil

;(is-arithmetic single)
;t

;(is-arithmetic double)
;t

;(is-arithmetic test2)
;t

;(is-arithmetic empty)
;t

(is-arithmetic test)
nil
