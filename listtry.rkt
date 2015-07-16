(define onetofour (list 1 2 3 4))
(define oddlist (list 1 3 5 7))
(define sqaurelist (list 1 4 9 16))
(define (append1 a b)
  (if (null? a) b
      (cons (car a) (append1 (cdr a) b))))
(define (sqr a) (* a a))
(define (squareforlist a)
  (if (null? a) nil
      (cons (sqr (car a)) (sqaureforlist (cdr a)))))