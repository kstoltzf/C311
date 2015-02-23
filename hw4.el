;Kyle Stoltzfus                   C311 Hw #4

(defun GCD (dividend divisor)
  "This function uses Euclid's algorithm to compute and return the greatest 
common divisor of two numbers."
  (let ((remainder 1))                ;make sure while loop initiates
    (while (/=  0 remainder)
      (setq remainder (% dividend divisor))
      (setq dividend divisor)
      (setq divisor remainder)))
  dividend)
GCD


(defun checkPrime (number)
  "This function checks if a number is prime. It returns t if a number is prime
and nil if it is not."
  (let ((isPrime t))
    (if (< number 2) (setq isPrime nil)       ;1 is not a prime number
      (dotimes (x (+ 1 (/ number 2)) isPrime)
	(if (and (> x 1) (= 0 (% number x)))
	    (setq isPrime nil))))))
checkPrime


(defun insert-at-end (list insert)
  "This function inserts an element at the end of a list and returns the new 
list. However, it does not change the original list that was passed into the 
function."
  (if (not (car list)) (cons insert ())
    (cons (car list) (insert-at-end (cdr list) insert))))
insert-at-end


;(setq test (list 1 2 3 4))
;(1 2 3 4)

;(setq empty ())
;nil

;(GCD 16 8)
;8

;(GCD 8 16)
;8

;(GCD 25 20)
;5

;(GCD 7 6)
;1

;(GCD 6 6)
;6

;(checkPrime 5)
;t

;(checkPrime 1)
;nil

;(checkPrime 2)
;t

;(checkPrime 8)
;nil

;(checkPrime 24)
;nil

;(checkPrime 73)
;t

;(insert-at-end test 6)
;(1 2 3 4 6)

;(insert-at-end empty 5)
;(5)


