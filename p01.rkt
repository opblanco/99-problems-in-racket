;;;; Find the last box of a list.
;;;; Example:
;;;; * (my-last '(a b c d))
;;;; (d)

#lang racket

(define (my-last lst)
  (if (null? lst)
      lst
      (if (null? (cdr lst))
          (car lst)
          (my-last (cdr lst)))))

; captain obvius :-)
(define (my-last-2 lst)
  (if (empty? lst)
      lst
      (last lst)))

; other solution
(define (my-last-3 lst)
  (cond
    [(or (empty? lst) (empty? (rest lst))) lst]
    [else (my-last-3 (rest lst))]))

(provide my-last)
(provide my-last-2)
(provide my-last-3)
