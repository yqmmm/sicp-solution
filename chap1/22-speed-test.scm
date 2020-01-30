(load "prime-gcd.scm")

(define (timed-prime-test n)
  (start-prime-test n (real-time-clock)))

(define (start-prime-test n start-time)
  (if (prime? n)
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

;---------------------------------------

; 这里的时间函数要改成real-time-clock，但是1000到1000000需要的时间还是可以忽略不计。我想可能是因为1978年的CPU慢很多，感受摩尔定律！

; 100000000 13
; 1000000000 37
; 10000000000 95

; 大概符合 $sqrt(10)$
