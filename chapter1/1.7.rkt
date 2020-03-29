#lang sicp

(#%require rackunit)

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (better-good-enough? guess prev-guess)
  (< (abs (- guess prev-guess)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (better-sqrt-iter guess prev-guess x)
  (if (better-good-enough? guess prev-guess)
      guess
      (better-sqrt-iter (improve guess x) guess x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (better-sqrt x)
  (better-sqrt-iter 1.0 0.5 x))

(check-true (< (abs (- 3 (better-sqrt 9)))
               (abs (- 3 (sqrt 9)))))

(check-true (< (abs (- 123456.123 (better-sqrt 15241414306.191129)))
               (abs (- 123456.123 (sqrt 15241414306.191129)))))
