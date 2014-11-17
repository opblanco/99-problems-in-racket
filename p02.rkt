;;;; Find the last but one box of a list
;;;; Example:
;;;; * (my-last-but '(a b c d))
;;;; '(c d)

#lang racket

(define (my-but-last lst)
  (cond
   [(or (empty? lst) (empty? (rest lst)) (empty? (rest(rest lst)))) lst]
   [else (my-but-last (rest lst))]))

(provide my-but-last))
