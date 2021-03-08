;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-38) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
; String -> String
; returns a string with the last character removed
; given: "foobar", expect: "fooba"
; given: "turkey", expect: "turke"

;(define (string-removed-last s) "f")    ; stub

;(define (string-removed-last s)         ; template
;  (... s ...))

(define (string-removed-last s)
  (substring s 0 (sub1 (string-length s))))