(load "36-accumulate-n.scm")

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

; ----------------------------
(define (matrix-*-vector m v)
  (map (lambda (row)
         (dot-product row v))
       m))

(define (transpose mat)
  (accumulate-n cons () mat))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (row) (matrix-*-vector cols row)) m)))

; -----------------------------
(define m
  '((1 2 3)
    (4 5 6)
    (7 8 9)))

(define (test-mv)
  (matrix-*-vector m '(1 2 3)))

(define (test-trans)
  (transpose m))

(define (test-mm)
  (matrix-*-matrix m (transpose m)))
