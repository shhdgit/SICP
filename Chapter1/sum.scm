#lang racket/load
(load "sigma.scm")

(define (! a b)
  (sigma a b (lambda (x) (+ x 1)) (lambda (x) x))
  )