;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-40) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/universe)
(require 2htdp/image)

; WorldState: data that represents the state of the world (cw)

(define WIDTH-OF-WORLD 200)
(define HEIGHT-OF-WORLD 200)

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

; WorldState -> WorldState
; moves the car by 3 pixels for every clock tick
(check-expect (tock 20) 23)
(check-expect (tock 78) 81)
(define (tock ws)
  (+ ws 3))