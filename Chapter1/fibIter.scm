#lang racket
(define (fib x)
  (define (fib-iter now next index)
    (if (= index 0)
        now
        (fib-iter next (+ now next) (- index 1)))
    )

  (fib-iter 0 1 x)
  )