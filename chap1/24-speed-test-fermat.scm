(load "prime-fermat.scm")

(define (timed-prime-test n)
  (start-prime-test n (real-time-clock)))

(define (start-prime-test n start-time)
  (if (fast-prime? n 5)
      (report-prime n (- (real-time-clock) start-time))
      0))

(define (report-prime number elapsed-time)
  (newline)
  (display number)
  (display " -> ")
  (display elapsed-time)
  1)

(define (search-for-primes start count)
  (if (> count 0)
      (search-for-primes (+ start 1) (- count (timed-prime-test start)))))
