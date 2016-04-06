#lang scheme
(define (biggerSum a b c)
  (cond ((and (> a b) (> a c)) a)
        ((and (> b a) (> b c)) b)
        ((and (> c a) (> c b)) c)
    )
  )

(define (getBigger one two three)
  (biggerSum (+ one two) (+ one three) (+ two three))
  )
