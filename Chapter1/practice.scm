#lang racket/load
(load "../utils.scm")

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (condprac x)
  (cond ((< 0 x) (+ x 1))
        ((> 0 x) (+ x 2))
        (else (+ x 3))))

(define (logiprac a b c)
  (and (< 0 a) (< 0 b) (< 0 c))
  (or (< 0 a) (< 0 b)))
