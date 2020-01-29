(define (double n) (+ n n))
(define (halve n) (/ n 2))

(define (mul a b)
  (cond ((= b 0) 0)
        ((even? b) (double (mul a (halve b))))
        (else (+ a (mul a (- b 1))))))
