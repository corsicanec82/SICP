#lang sicp

(#%require rackunit)

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(check-equal? (sqrt 9) 3.00009155413138)
(check-equal? (sqrt (+ 100 37)) 11.704699917758145)
(check-equal? (sqrt (+ (sqrt 2) (sqrt 3))) 1.7739279023207892)
(check-equal? (square (sqrt 1000)) 1000.000369924366)

#;(define (new-if predicate then-clause else-clause)
    (cond ((predicate) then-clause)
          (else else-clause)))

; Endless recursion because the arguments for the procedure are calculated first,
; and then the procedure is applied (Applicative calculation order).
