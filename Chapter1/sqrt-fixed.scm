#lang racket/load
(load "fixed-point.scm")

(define (sqrt x)
  (fixed-point 1.0 (lambda (guess)
                   (/ (+ (/ x guess) guess) 2)
                   ))
  )