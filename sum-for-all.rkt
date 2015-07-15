(define (sum a b term next)
  (if (> a b)
      0
      (+ (term a)
         (sum (next a) b term next))))
(define (inc a) (+ a 1))
(define (cube a) (* * a a a))
