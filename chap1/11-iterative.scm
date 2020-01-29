(define (funcI n)
  (if (< n 3)
      n
      (funcI-iter 3 n 2 1 0)))

(define (funcI-iter counter max-counter fn fn-1 fn-2)
  (if (> counter max-counter)
      fn
      (funcI-iter (+ counter 1)
                  max-counter
                  (+ fn (* 2 fn-1) (* 3 fn-2))
                  fn
                  fn-1)))
