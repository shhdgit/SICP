#lang racket
(define (pascal n)
  (define (indices a n)
    (define (ind-iter x n)
      (if (= n 1)
          x
          (ind-iter (* x a) (- n 1)))
      )

    (ind-iter a n)
    )
  
  (define (pascal-recu n)
    (if (= n 1)
        1
        (+ (pascal-recu (- n 1))
           (indices 2 (- n 1))))
    )

  (pascal-recu n)
  )