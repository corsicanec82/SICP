#lang sicp

(#%require rackunit)

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(check-equal? (A 1 10) 1024)
(check-equal? (A 2 4) 65536)
(check-equal? (A 3 3) 65536)

(define (f n) (A 0 n))
; (f n) = 2 * n
(check-equal? (f 5) (* 2 5))
(check-equal? (f 6) (* 2 6))

(define (g n) (A 1 n))
; (g n) = 2 ^ n
(check-equal? (g 3) (expt 2 3))
(check-equal? (g 5) (expt 2 5))

(define (h n) (A 2 n))
; (h n) = 2 ↑↑ n
(check-equal? (h 3) (expt 2 (expt 2 2)))
(check-equal? (h 4) (expt 2 (expt 2 (expt 2 2))))

(define (k n) (* 5 n n))
; (k n) = 5 * n ^ 2
(check-equal? (k 3) (* 5 (expt 3 2)))
(check-equal? (k 4) (* 5 (expt 4 2)))
