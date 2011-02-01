#lang racket
;;; Ex: 1.8
;;; Newton's cube root implementation
;;; Procedure name: ncrt

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (average x y)
  (/
   (+ x y)
   2))

(define (ncrt x)
  (define (good-enough? guess)
    (< (abs (- (cube guess) x)) 0.001))
  (define (improve guess)
    (/
     (+
      (/ x (square guess))
      (* 2 guess))
     3))
  (define (crt-iter guess)
    (if (good-enough? guess)
        guess
        (crt-iter (improve guess))))
  (crt-iter 1.0))

;;; cube root of 2. Expected value: 1.25
(ncrt 2)