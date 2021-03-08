;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-34) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
; String -> String
; extracts the first character from a non-empty string
; given: "foobar", expect: "f"
; given: "hello, world", expect: "h"

; (define (string-first s) "n")    ; stub

;(define (string-first s)           ; template
;  (... s ...))

(define (string-first s)
  (string-ith s 0))

(string-first "foobar")
(string-first "hello, world")