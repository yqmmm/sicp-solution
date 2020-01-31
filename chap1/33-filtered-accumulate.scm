(define (filtered-accumulate combiner null-value term a next b filter)
  (if (> a b)
      null-value
      (let ((rest (filtered-accumulate combiner null-value term (next a) next next b filter)))
        (if (filter a)
            (combiner (term a) rest)
            rest))))

(define (primes-sum a b)
  (filtered-accumulate + 
                       0
                       (lambda (x) x)
                       a
                       (lambda (i) (+ i 1))
                       b
                       prime?))

(define (product-of-coprimes n)
  (define (coprime? i n)
    (and (< i n)
         (= 1 (gcd i n))))
  (filtered-accumulate *
                       1
                       (lambda (x) x)
                       1
                       (lambda (i) (+ i 1))
                       n
                       (lambda (x) (coprime? x n))))
