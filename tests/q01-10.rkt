#lang racket
(require typed/racket)

;; Require source files from parent directory
(require (file "../p01.rkt"))
(require (file "../p02.rkt"))

(display "Testing p01-p10\n")

;; p01 tests
(assert (equal? (my-last '(a b c d)) 'd))
(assert (equal? (my-last '(1 2 3 4)) '4))
(assert (equal? (my-last '((a b) (c d))) '(c d)))

(assert (equal? (my-last-2 '(a b c d)) 'd))
(assert (equal? (my-last-2 '(1 2 3 4)) '4))
(assert (equal? (my-last-2 '((a b) (c d))) '(c d)))

(assert (equal? (my-last-3 '(a b c d)) '(d)))
(assert (equal? (my-last-3 '(1 2 3 4)) '(4)))
(assert (equal? (my-last-3 '((a b) (c d))) '((c d))))

;; p02 tests
(assert (equal? (my-but-last '(a b c d)) '(c d)))
(assert (equal? (my-but-last '(1 2 3 4)) '(3 4)))
(assert (equal? (my-but-last '((a b) (c d))) '((a b) (c d))))
(assert (equal? (my-but-last '((a b) c (d e))) '(c (d e))))

