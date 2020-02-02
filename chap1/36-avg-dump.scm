(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) 
       tolerance))
  (define (try guess count)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          (begin
            (display "Count : ")
            (display count)
            (newline)
            next)
          (try next (+ count 1)))))
  (try first-guess 1))

(define (avg-damp f)
  (define (average a b) (/ (+ a b) 2))
  (lambda (x)
    (average x
             (f x))))

(define (f x)
  (/ (log 1000)
     (log x)))

; (fixed-point f 0.5) -> 34 steps
; (fixed-point (avg-damp f) 0.5) -> 9 steps
; So fixed point method with average damping is faster.
