#lang scheme
(define (cuberoot x)
  (define (abs num)
    (if (> 0 num)
        (- num)
        num))

  (define (cube num)
    (* num num num))

  (define (square num)
    (* num num))

  (define (isGoodEnough guess)
    (< (abs (- (cube guess) x))
       0.0001))

  (define (improve guess)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

  (define (cuberoot-iter guess)
    (if (isGoodEnough guess)
        guess
        (cuberoot-iter (improve guess))))
  (cuberoot-iter 1.0))
