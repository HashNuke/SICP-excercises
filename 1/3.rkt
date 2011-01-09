#lang racket
(define (square x)
  (* x x))

(define (sum-of-sq x y)
  (+ (square x) (square y)))

(define (largest-two x y z)
  (if ((and (< x y) (< y z)) (sum-of-sq y z))
      ((and (< y x) (< y z)) (sum-of-sq x z))
    (sum-of-sq y z)))

