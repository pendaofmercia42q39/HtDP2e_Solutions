;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-35) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
; String -> String
; extracts the last character from a non-empty string
; given: "foobar", expect: "r"
; given: "fee-fi-fo-fum", expect: "m"

; (define (string-last s) "r")    ; stub

;(define (string-last s)          ; template
;  ( ... s ...))

(define (string-last s)
  (string-ith s (- (string-length s) 1)))

(string-last "foobar")
(string-last "fee-fi-fo-fum")