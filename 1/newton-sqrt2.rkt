#lang racket
;;; Newton's sqrt implementation written with internal definitions and lexical scoping
;;; Proc name: newton-sqrt

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (newton-sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

;;; Square root of 2. Expected value: 1.4
(newton-sqrt 2)