(define (sigma a b interval pattern)
  (define (sigma-recu a b)
    (if (> a b)
        0
        (+ (pattern a)
           (sigma-recu (interval a) b)))
    )
  
  (sigma-recu a b)
  )
