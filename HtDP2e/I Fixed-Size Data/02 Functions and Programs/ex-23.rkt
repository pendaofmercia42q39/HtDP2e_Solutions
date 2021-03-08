;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-23) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (string-first s)
  (substring s 0 1))

(string-first "hello world")
; Step 1: (string-first "hello world") -> (substring "hello world" 0 1)
; Step 2: (substring "hello world" 0 1) -> "h"