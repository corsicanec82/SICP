#lang sicp

(#%require rackunit)

(define (cube-sqrt x)
  (cube-sqrt-iter 1.0 0.5 x))

(define (cube-sqrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
      guess
      (cube-sqrt-iter (improve guess x) guess x)))

(define (good-enough? guess prev-guess)
  (< (abs (- guess prev-guess)) 0.0001))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (square x)
  (* x x))

(check-true (< (abs (- 3 (cube-sqrt 27)))
               0.0001))

(check-true (< (abs (- 0.003 (cube-sqrt 0.000000027)))
               0.0001))
