(define (fixed-point start try)
  (let ((tolerance 0.00001))
    (define (enough? old new)
      (< (/ (abs (- new old)) old) tolerance)
      )
    
    (define (recu old new)
      (if (enough? old new)
          new
          (recu new (try new))))

    (recu start (try start))
    )
  )
