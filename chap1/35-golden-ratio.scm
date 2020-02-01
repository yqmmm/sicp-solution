(load "fix-point.scm")

(define (golden-ratio)
  (fixed-point (lambda (n) (+ 1 (/ 1 n))) 1.0))
