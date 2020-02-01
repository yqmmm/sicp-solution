(load "37-cont-frac.scm")

(define (e n)
  (+ 2
     (cont-frac (lambda (i) 1.0)
                (lambda (i)
                  (if (= (remainder i 3) 2)
                      (* (+ i 1)
                         (/ 2 3))
                      1))
                n)))
