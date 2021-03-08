;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-05) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(require 2htdp/image)

(define tri (triangle 40 "solid" "tan"))
(define tri2 (triangle 50 "solid" "tan"))
(define tri3 (triangle 60 "solid" "tan"))

(above tri tri2 tri3)
