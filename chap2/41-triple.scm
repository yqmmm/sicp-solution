(load "nested-mapping.scm")

(define (triple n s)
  (flatmap
    (lambda (i)
      (map (lambda (j)
             (list i j (- s i j)))
           (enumerate-interval (max 1 (ceiling (/ (- s i) 2))) (min (- s i 1) (- i 1)))))
    (enumerate-interval 3 n)))
