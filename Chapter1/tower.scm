#lang racket
(define (tower-trace from to)
  (display from)
  (display " to ")
  (display to)
  (display ", "))

(define (tower-iter n from to spare)
  (cond ((= n 0) 0)
        (else
         (tower-iter (- n 1) from spare to)
         (tower-trace from to)
         (tower-iter (- n 1) spare to from)
         ))
  )

(define (tower n)
  (tower-iter n 1 2 3))