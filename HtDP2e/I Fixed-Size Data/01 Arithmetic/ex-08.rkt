;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-08) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(require 2htdp/image)

(define cat (bitmap "cat.png"))

(if (>= (image-height cat) (image-width cat))
    "tall"
    "wide")

(define box (rectangle 40 10 "solid" "green"))

(if (= (image-height box) (image-width box))
    "square"
    (if (>= (image-height box) (image-width box))
        "tall"
        "wide"))
