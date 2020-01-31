(define (term-numer n)
  (cond ((= n 1) 2)
        ((even? n) (+ n 2))
        (else (+ n 1))))

(define (term-denom n)
  (if (even? n)
      (+ n 1)
      (+ n 2)))

(define (pi n)
  (define (next i) (+ i 1))
  (* 4
     (exact->inexact
       (/ (product term-numer next 1 n)
          (product term-denom next 1 n)))))
