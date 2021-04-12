;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-36) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(require 2htdp/image)

; Image -> Number
; counts the number of pixels in an image
; given: (rectangle 10 10 "solid" "red"), expect: 100

; (define (image-area img) 4096)    ; stub

;(define (image-area img)           ; template
;  (... img ...))

(define (image-area img)
  (* (image-width img) (image-height img)))

(define cat (bitmap "cat.png"))

(image-area (rectangle 10 10 "solid" "red"))
(image-area cat)
