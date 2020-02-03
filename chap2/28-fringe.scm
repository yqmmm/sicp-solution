; This works for multi-way tree.
(define (fringe tree)
  (define (iter tree leaves)
    (cond ((null? tree) leaves)
          ((not (pair? tree)) (list tree))
          (else (iter
                  (cdr tree)
                  (append leaves (fringe (car tree)))))))
  (iter tree ()))
