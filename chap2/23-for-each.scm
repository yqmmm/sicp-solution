(define (for-each func items)
  (if (not (null? items))
      (begin
        (func (car items))
        (for-each func (cdr items)))))
