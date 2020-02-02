(load "rational.scm")

(define (make-rat n d)
  (let ((g (gcd n d))
        (sign (* n d)))
    (cons (if (< sign 0)
              (- (abs (/ n g)))
              (abs (/ n g)))
          (abs (/ d g)))))
