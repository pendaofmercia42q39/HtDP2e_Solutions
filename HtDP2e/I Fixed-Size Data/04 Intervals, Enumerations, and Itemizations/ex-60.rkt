;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-60) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

; An N-TrafficLight is one of:
; -- 0 interpretation: the traffic light shows red
; -- 1 interpretation: the traffic light shows green
; -- 2 interpretation: the traffic light shows yellow

(define BOX (rectangle 90 30 "outline" "black"))

; bulb : String String -> Image
; given a fill type and color, make a light bulb
(check-expect (bulb "solid" "red") (circle 12 "solid" "red"))
(check-expect (bulb "outline" "green") (circle 12 "outline" "green"))
(check-expect (bulb "solid" "green") (circle 12 "solid" "green"))
(check-expect (bulb "solid" "yellow") (circle 12 "solid" "yellow"))
(define (bulb m c) (circle 12 m c))

; tl-next-numeric : N-TrafficLight -> N-TrafficLight
; yields the next state, given current state cs
(check-expect (tl-next-numeric 0) 1)
(check-expect (tl-next-numeric 1) 2)
(check-expect (tl-next-numeric 2) 0)
(define (tl-next-numeric cs)
  (modulo (+ cs 1) 3))

; tl-render : N-TrafficLight -> Image
; renders the current state cs as an image
(check-expect (tl-render 0) (underlay BOX (beside (bulb "solid" "red") (bulb "outline" "black") (bulb "outline" "black"))))
(check-expect (tl-render 1) (underlay BOX (beside (bulb "outline" "black") (bulb "outline" "black") (bulb "solid" "green"))))
(check-expect (tl-render 2) (underlay BOX (beside (bulb "outline" "black") (bulb "solid" "yellow") (bulb "outline" "black"))))
(define (tl-render current-state)
  (cond [(= 0 current-state) (underlay BOX (beside (bulb "solid" "red") (bulb "outline" "black") (bulb "outline" "black")))]
        [(= 1 current-state) (underlay BOX (beside (bulb "outline" "black") (bulb "outline" "black") (bulb "solid" "green")))]
        [(= 2 current-state) (underlay BOX (beside (bulb "outline" "black") (bulb "solid" "yellow") (bulb "outline" "black")))]))
  
; traffic-light-simulation : N-TrafficLight -> N-TrafficLight
; simulates a clock-based American traffic light
(define (traffic-light-simulation initial-state)
  (big-bang initial-state
  [to-draw tl-render]
  [on-tick tl-next-numeric 1]))