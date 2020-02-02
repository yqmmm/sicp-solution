(define (reverse l)
  (define (iter old new)
    (if (null? old)
        new
        (iter (cdr old)
              (cons (car old) new))))
  (iter l ()))
