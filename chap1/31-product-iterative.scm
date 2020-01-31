(define (product term next a b)
  (define (iter prod cur)
    (if (> cur b)
        prod
        (iter (* prod (term cur)) (next cur))))
  (iter 1 a))

(define (factorial n)
  (product (lambda (x) x) (lambda (x) (+ x 1)) 1 n))
