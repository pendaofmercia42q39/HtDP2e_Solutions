;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-37) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
; String -> String
; returns a string with the first character removed
; given: "xyzzy", expect: "yzzy"
; given: "0531", expect: "531"

;(define (string-rest s) "oobar")    ; stub

;(define (string-rest s)             ; template
;  (... s ...))

(define (string-rest s)
  (substring s 1))

(string-rest "xyzzy")
(string-rest "0531")
