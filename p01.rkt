;;;; Find the last box of a list.
;;;; Example:
;;;; * (my-last '(a b c d))
;;;; (d)

#lang racket

(define (my-last lst)
  (if (null? lst)
      '()
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

(my-last '(1 2))
(my-last '())
(my-last-2 '(1 2))
(my-last-2 '())
(my-last-3 '())
(my-last-3 '(1 2))

(provide my-last-2)
(provide my-last-3)
