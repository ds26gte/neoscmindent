;last modified 2019-11-10
;created < 2013-04-07
;Dorai Sitaram
;(n)vim with v:version == 800 still gets this wrong

;example code in need of indentation

(begin
  (display "alpha
             bravo should stay put, not move under alpha
               charlie should stay put, not move under alpha or bravo")
       "should line up under lparen before display, not under alpha, bravo, or charlie")

;after indenting with
;  setl lisp ep=

(begin
  (display "alpha
           bravo should stay put, not move under alpha
           charlie should stay put, not move under alpha or bravo")
           "should line up under lparen before display, not under alpha, bravo, or charlie")

;after indenting with
;  setl nolisp ep= inde=scmindent#GetScmIndent(v:lnum)

(begin
  (display "alpha
             bravo should stay put, not move under alpha
               charlie should stay put, not move under alpha or bravo")
  "should line up under lparen before display, not under alpha, bravo, or charlie")
