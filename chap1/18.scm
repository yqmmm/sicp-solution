(define (double n) (+ n n))
(define (halve n) (/ n 2))

(define (mul a b)
  (mul-iter a b 0))

(define (mul-iter a b res)
  (cond ((= b 0) res)
        ((even? b) (mul-iter (double a) (halve b) res))
        (else (mul-iter a (- b 1) (+ res a)))))
