; 1. This List is reversed but in a way that it start from the end to the beginning.

; 2. This List is reversed in that the first element in a pair point to the next value and the second element in a pair is the current value.

; Here is a correct implementation:

(load "18-reverse.scm")

(define (square-list items)
    (define (iter things answer)
        (if (null? things)
            (reverse answer)
            (iter (cdr things)  
                  (cons (square (car things))
                        answer))))
    (iter items ()))
