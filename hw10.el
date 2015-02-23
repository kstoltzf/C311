;Kyle Stoltzfus
;C311 HW #10
;4/12/14

;This program checks a string to see if it follows the
;rules of the following grammer:
;S => U
;U => b c U
;U => a V
;V => a V
;V => e  (e is equivalent to the empty string)

(defun check-S (L)
  (check-U L))
check-S

(defun check-U (L)
  (cond ((and (equal (car L) 'b) (equal (cadr L) 'c))
	                        ;first case of U
	 (setq L1 (cdr L))      ;move cursor to the 
	                        ;last terminal symbol
	 (check-U (cdr L1)))
	((equal (car L) 'a)     ;second case of U
	 (check-V (cdr L)))
	(t nil)))               ;invalid string
check-U

(defun check-V (L)
  (cond ((equal (car L) 'a)     ;first case of V
	 (check-V (cdr L)))
	((equal (car L) nil) t) ;second case of V
	(t nil)))               ;invalid string
check-V

;(setq L '(b c b c b c a a))
;(b c b c b c a a)

;(check-S L)
;t

;(check-S '(a))
;t

;(check-S '(a a))
;t

;(check-S '(b c a))
;t

;(check-S '(b a))
;nil

;(check-S ())
;nil

;(check-S '(a b))
;nil





