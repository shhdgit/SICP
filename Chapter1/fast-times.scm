#lang racket
(define (double n)
  (* n 2)
  )

(define (halve n)
  (/ n 2)
  )

(define (fast-times a b)
  (define (times-iter x p n)
    (if (= n 1)
        (+ x p)
        (if (= (remainder n 2) 0)
            (times-iter (double x) p (halve n))
            (times-iter x (+ p x) (- n 1))))
    )

  (times-iter a 0 b)
  )