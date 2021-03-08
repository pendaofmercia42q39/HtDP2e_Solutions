;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-17) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(require 2htdp/image)

(define (image-classify img)
  (if (= (image-height img) (image-width img))
    "square"
    (if (>= (image-height img) (image-width img))
        "tall"
        "wide")))

(image-classify (rectangle 10 40 "solid" "green"))
(image-classify (rectangle 40 10 "solid" "green"))
(image-classify (rectangle 10 10 "solid" "green"))
