#lang sicp

(#%require rackunit)

(define (square a) (* a a))

(define (sum-of-squares a b)
  (+ (square a)
     (square b)))

(define (solution a b c)
  (sum-of-squares (max a b)
                  (max (min a b)
                       c)))

(check-equal? (solution 2 3 4) 25)
(check-equal? (solution 4 2 3) 25)
(check-equal? (solution 3 4 2) 25)
(check-equal? (solution 4 4 2) 32)
(check-equal? (solution 3 4 4) 32)
