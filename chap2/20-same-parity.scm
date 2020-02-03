(define (same-parity first . others)
  (if (even? first)
      (filter even? others)
      (filter odd? others)))
