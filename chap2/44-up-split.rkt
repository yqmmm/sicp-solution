(define (right-split painter n)
  (if (= n 0)
      painter
      (let ((smaller (right-split painter
                                  (- n 1))))
        (beside painter
                (below smaller smaller)))))

(define (split f1 f2)
  (define (spt painter n)
    (if (= n 0)
        painter
        (let ((smaller (spt painter
                            (- n 1))))
          (f1 painter
              (f2 smaller smaller)))))
  spt)

(define right-split (split beside below))
(define up-split (split below beside))