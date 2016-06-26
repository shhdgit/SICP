#lang racket/load
(load "../utils.scm")

;New sqrt practice
(define (sqrt x)
  (sqrt-iter 1.0 x))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))
(define (good-enough? guess x)
  (< (/ (abs (- guess
                (improve guess x)))
        guess)
     0.001))
(define (improve guess x)
  (/ (+ guess
        (/ x guess))
     2))