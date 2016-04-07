#lang scheme
(define (power x n)
  (define (power-iter num i)
    (if (= i n)
        num
        (power-iter (* num x) (+ i 1))))
  (power-iter 2 1))

(define (Pascal n)
  (if (= 1 n)
      1
      (+ (Pascal (- n 1)) (power 2 (- n 1)))))
