#lang racket/load
(define (fib x)
  (cond ((= x 0) 0)
        ((= x 1) 1)
        (else (+ (fib (- x 1)) (fib (- x 2))))
        ))