;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-39) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(require 2htdp/universe)
(require 2htdp/image)

; WorldState: data that represents the state of the world (cw)

(define WIDTH-OF-WORLD 200)
(define HEIGHT-OF-WORLD 200)
(define BACKGROUND
  (rectangle HEIGHT-OF-WORLD WIDTH-OF-WORLD
             "outline"
             "black"))

(define WHEEL-RADIUS 5)        ; default: 5
(define WHEEL-DISTANCE (* WHEEL-RADIUS 5))

(define WHEEL
  (circle WHEEL-RADIUS "solid" "black"))
(define SPACE
  (rectangle WHEEL-DISTANCE WHEEL-RADIUS WHEEL-DISTANCE "transparent"))
(define BOTH-WHEELS
  (beside WHEEL SPACE WHEEL))

(define BODY
  (overlay/align "middle" "bottom"
                 (rectangle (* 6 WHEEL-RADIUS) (* 4 WHEEL-RADIUS)
                            "solid"
                            "red")
                 (rectangle (* 12 WHEEL-RADIUS) (* 2 WHEEL-RADIUS)
                            "solid"
                            "red")))

(define CAR
  (above BODY BOTH-WHEELS))

CAR
