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
  (if (not (pair? mobile))
      mobile
      (+ (total-weight (branch-structure (left-branch mobile)))
         (total-weight (branch-structure (right-branch mobile))))))

(define (test-total-weight)
  (define sub-mobile
    (make-mobile
      (make-branch 1 1)
      (make-branch 1 1)))
  (define mobile
    (make-mobile
      (make-branch 1 sub-mobile)
      (make-branch 3 4)))
  (total-weight mobile))

;-- 3 --
(define (balanced? mobile)
  (cond ((not (pair? mobile)) #t)
        ((or (not (balanced? (branch-structure (left-branch mobile))))
             (not (balanced? (branch-structure (right-branch mobile)))))
         #f)
        (else (= (* (total-weight (branch-structure (left-branch mobile)))
                    (branch-length (left-branch mobile)))
                 (* (total-weight (branch-structure (right-branch mobile)))
                    (branch-length (right-branch mobile)))))))

(define (test-balanced?)
  (define mobile
    (make-mobile
      (make-branch 2 
                   (make-mobile
                     (make-branch 1 2)
                     (make-branch 2 1)))
      (make-branch 3 2)))
  (balanced? mobile))

;-- 4 --
; only `branch-length` and `branch-structure` needs to be changed.
