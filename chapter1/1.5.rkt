#lang sicp

(#%require rackunit)

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))
