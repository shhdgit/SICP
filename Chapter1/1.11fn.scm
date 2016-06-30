#lang racket
(define (f-recu n)
  (if (< n 3)
      n
      (+ (f-recu (- n 1))
         (* 2 (f-recu (- n 2)))
         (* 3 (f-recu (- n 3)))
         )
      )
  )

(define (f-iter n)
  (define (f count a b c)
    (let ((answer (+ a (* b 2) (* c 3))))
      (if (= count 3)
          answer
          (f (- count 1) answer a b))
      )
    )

  (if (< n 3)
      n
      (f n 2 1 0))
  )