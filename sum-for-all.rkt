(define (sum a b term next)
  (if (> a b)
      0
      (+ (term a)
         (sum (next a) b term next))))
(define (inc a) (+ a 1))
(define (cube a) (* a a a))
(define (pi-term a) (/ 1.0
                       (* a (+ a 2))))
(define (pi-next a) (+ a 4))
(define (getpi a b)
  (* 8 (sum 1 1000 pi-term pi-next)))