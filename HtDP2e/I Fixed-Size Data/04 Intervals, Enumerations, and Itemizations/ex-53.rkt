;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-53) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(define WIDTH 100)
(define HEIGHT 200)
(define Y-DELTA 3)

(define BACKG (empty-scene WIDTH HEIGHT))
(define ROCKET (rectangle 5 30 "solid" "blue"))
(define ROCKET-CENTER (/ (image-height ROCKET) 2))
(define ROCKET-X (/ WIDTH 2))

; (place-image ROCKET ROCKET-X ... BACKG)
(place-image ROCKET ROCKET-X HEIGHT BACKG)
(place-image ROCKET ROCKET-X 0 BACKG)