;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-41) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/universe)
(require 2htdp/image)

; WorldState: data that represents the state of the world (cw)

(define WIDTH-OF-WORLD 200)
(define HEIGHT-OF-WORLD 200)

(define Y-COR (/ HEIGHT-OF-WORLD 2)) ; fixed Y-Coordinate of the CAR 

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

(define TREE
  (underlay/xy (circle 10 "solid" "green")
               9 15
               (rectangle 2 20 "solid" "brown")))

(define BACKGROUND
  (overlay TREE
  (rectangle HEIGHT-OF-WORLD WIDTH-OF-WORLD
             "outline"
             "black")))

; WorldState -> WorldState
; moves the car by 3 pixels for every clock tick
(check-expect (tock 20) 23)
(check-expect (tock 78) 81)
(define (tock ws)
  (+ ws 3))

; WorldState -> Image
; places the CAR into the BACKGROUND scene.
; according to the given world state
(check-expect (render 20) (place-image CAR 20 Y-COR BACKGROUND))
(check-expect (render 78) (place-image CAR 78 Y-COR BACKGROUND))
(define (render ws)
  (place-image CAR ws Y-COR BACKGROUND))

; WorldState -> Boolean
; detect when car has passed right edge of scene
(check-expect (end? (main 264)) #true)
(check-expect (end? 27) #false)
(define (end? ws)
  (< (+ (image-width CAR) WIDTH-OF-WORLD) ws))

; WorldState -> WorldState
; launches the world from some initial state 
(define (main y)
  (big-bang y
    [on-tick tock]
    [to-draw render]
    [stop-when end?]))