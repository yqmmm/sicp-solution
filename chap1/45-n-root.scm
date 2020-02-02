(load "36-avg-dump.scm")
(load "43-repeated.scm")

; Use (ceil (log2 n)) avg-damp for n-th root.

(define (root x n)
  (define (log2 x)
    (cond ((> (/ x 2) 1)
           (+ 1 (log2 (/ x 2))))
          ((< (/ x 2) 1)
           0)
          (else
            1)))

  (fixed-point
    ((repeated avg-damp (log2 n))
      (lambda (y)
        (/ x
           (expt y (- n 1)))))
    1.0))
