#lang scheme
(define (calcu1 n)
  (if (> 3 n)
      n
      (+ (calcu1 (- n 1)) (* 2 (calcu1 (- n 2))) (* 3 (calcu1 (- n 3)))
         )))

(define (calcu2 n)
  (define (cal x y z i n)
    (if (> 3 n)
        n
        (if (= n i)
            (+ x (* 2 y) (* 3 z))
            (cal (+ x (* 2 y) (* 3 z)) x y (+ i 1) n))))
  (cal 2 1 0 3 n))
