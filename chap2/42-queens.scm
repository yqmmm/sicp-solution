(load "accumulate.scm")
(load "nested-mapping.scm")

(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (positions) 
           (safe? k positions))
         (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position 
                    new-row 
                    k 
                    rest-of-queens))
                 (enumerate-interval 
                  1 
                  board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))

(define empty-board ())

(define (adjoin-position row col rest-of-queens)
  (cons row rest-of-queens))

(define (safe? k positions)
  (define (check r-new queens i)
    (if (null? queens)
        #t
        (let ((r (car queens)))
          (if (or (= r-new r)
                  (= r-new (+ r i))
                  (= r-new (- r i)))
              #f
              (check r-new
                     (cdr queens)
                     (+ i 1))))))
  (check (car positions)
         (cdr positions)
         1))
