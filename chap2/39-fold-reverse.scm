(load "38-fold-left-right.scm")

(define (reverse-right sequence)
  (fold-right 
   (lambda (x y) (append y (list x))) () sequence))

(define (test-right)
  (reverse-right '(1 2 3 4)))

(define (reverse-left sequence)
  (fold-left 
   (lambda (x y) (cons y x)) () sequence))

(define (test-left)
  (reverse-left '(1 2 3 4)))
