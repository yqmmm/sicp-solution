(define (cons a b)
  (*
    (expt 2 a)
    (expt 3 b)))

(define (factor p f)
  (define (iter p result)
    (if (= (remainder p f) 0)
        (iter (/ p f) (+ result 1))
        result))
  (iter p 0))

(define (car p) (factor p 2))
(define (cdr p) (factor p 3))
