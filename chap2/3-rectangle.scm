(load "2-line.scm")

(define (make-rect a b)
  (define (smaller x y)
    (if (< x y) x y))

  (define (larger x y)
    (if (< x y) y x))

  (cons
    (make-point
      (smaller
        (x-point a)
        (x-point b))
      (smaller
        (y-point a)
        (y-point b)))
    (make-point
      (larger
        (x-point a)
        (x-point b))
      (larger
        (y-point a)
        (y-point b)))))

(define (x-len rect)
  (-
    (car (cdr rect))
    (car (car rest))))

(define (y-len rect)
  (-
    (cdr (cdr rect))
    (cdr (cdr rect))))

(define (area rect)
  (*
    (x-len rect)
    (y-len rect)))

(define (perimeter rect)
  (* 2
     (+ (x-len rect)
        (y-len rect))))

; We can use another representation with `x-len` and `y-len` as abstraction barrier.
