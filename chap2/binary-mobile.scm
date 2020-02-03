(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

;-- 1 --
(define (left-branch mobile) (car mobile))
(define (right-branch mobile) (car (cdr mobile)))

(define (branch-length branch) (car branch))
(define (branch-structure branch) (car (cdr branch)))

;-- 2 --
(define (total-weight mobile)
  (define (weight structure)
    (if (not (pair? structure))
        structure
        (total-weight structure)))
  (+ (weight (branch-structure (left-branch mobile)))
     (weight (branch-structure (right-branch mobile)))))

(define (test-total-weight)
  (define mobile
    (make-mobile
      (make-branch 1 2)
      (make-branch 3 4)))
  (total-weight mobile))

;-- 3 --
