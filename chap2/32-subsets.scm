(define (subsets s)
  (if (null? s)
      (list ())
      (let ((rest (subsets (cdr s))))
        (append rest (map 
                       (lambda (x)
                         (cons (car s) x))
                       rest)))))

(define (test)
  (subsets
    (list 1 2 3)))

; Plain old 枚举子集
