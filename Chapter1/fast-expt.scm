#lang racket/load
(load "../utils.scm")

(define (fast-expt b n)
  (define (even? n)
    (= (remainder n 2) 0)
    )
  
  (define (expt-iter a n)
    (cond ((= n 0) (/ a b))
          ((even? n) (expt-iter (* a (square b)) (/ n 2)))
          (else (expt-iter (* a b) (- n 1))))
    )

  (expt-iter 1 n)
  )