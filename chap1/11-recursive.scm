(define (funcR n)
  (cond ((< n 3) n)
        (else (+ (funcR (- n 1))
                 (* 2 (funcR (- n 2)))
                 (* 3 (funcR (- n 3)))))))
