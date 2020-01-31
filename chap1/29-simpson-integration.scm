(load "procedure-argument.scm")

(define (cube x) (* x x x ))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b) 
     dx))

(define (simpson-integral f a b n)
  (define (next x)
    (+ x 1))

  (define (factor x)
    (cond ((or (= x 0) (= x n)) 1)
          ((even? x) 2)
          (else 4)))

  (define h (/ (- b a) n))

  (define (term k)
    (* (factor k)
       (f (+ a (* k h)))))

  (* (/ h 3) 
     (sum term (exact->inexact 0) next n)))

; Use exact->inexact or it will become a decimal.
