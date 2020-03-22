#|review: ignore|#

#lang sicp

(#%require rackunit)

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; Endless recursion because the arguments for the procedure are calculated first,
; and then the procedure is applied (Applicative calculation order).
