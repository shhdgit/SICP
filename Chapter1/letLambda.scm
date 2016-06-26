#lang racket/load
(load "../utils.scm")

(define (sqrt x)
  (define (good-enough? guess new-guess)
    (< (/ (abs (- guess new-guess))
          guess)
       0.001))

  (define (sqrt-iter guess)
    (let ((improve-guess (/ (+ guess
                               (/ x guess))
                            2)))
      (if (good-enough? guess improve-guess)
          guess
          (sqrt-iter improve-guess))))

  (sqrt-iter 1.0)
  )