(define (product term next a b)
  (if (> a b)
      1
      (* (term a)
         (product term next (next a) b))))

(define (factorial n)
  (product (lambda (x) x) (lambda (x) (+ x 1)) 1 n))
