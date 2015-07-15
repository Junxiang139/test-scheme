(define (sum a b term next)
  (if (> a b)
      0
      (+ (term a)
         (sum (next a) b term next))))
(define (inc a) (+ a 1))
(define (cube a) (* a a a))
(define (pi-term a) (/ 1.0
                       (* a (+ a 2.0))))
(define (pi-next a) (+ a 4.0))
(define (getpi b)
  (* 8.0 (sum 1 b pi-term pi-next)))
(define (getpi2 b)
  (* 8.0 (sum 1 b
              (lambda (a) (/ 1.0 (* a (+ a 2.0))))
              (lambda (a) (+ a 4.0)))))