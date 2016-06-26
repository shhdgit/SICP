#lang racket/load
(load "../utils.scm")

(define (cube x)
  (cube-iter 1.0 x))

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (/ (abs (- guess
                (improve guess x)))
        guess)
     0.0001))

(define (improve guess x)
  (/ (+ (/ x
           (square guess))
        (* 2 guess))
     3))