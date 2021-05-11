;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-59) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

; A TrafficLight is one of the following Strings:
; -- "red"
; -- "green"
; --- "yellow"
; interpretation: the three strings represent the three
; possible states that a traffic light may assume

(define BOX (rectangle 90 30 "outline" "black"))
;(underlay box (beside (bulb "outline" "black") (bulb "outline" "black") (bulb "outline" "black")))

; bulb : String String -> Image
; given a fill type and color, make a light bulb
(check-expect (bulb "solid" "red") (circle 12 "solid" "red"))
(check-expect (bulb "outline" "green") (circle 12 "outline" "green"))
(check-expect (bulb "solid" "green") (circle 12 "solid" "green"))
(check-expect (bulb "solid" "yellow") (circle 12 "solid" "yellow"))
(define (bulb m c) (circle 12 m c))

; tl-next : TrafficLight -> TrafficLight
; yields the next state given current state cs
(check-expect (tl-next "red") "green")
(check-expect (tl-next "green") "yellow")
(check-expect (tl-next "yellow") "red")
(define (tl-next cs)
  (cond [(string=? "red" cs) "green"]
        [(string=? "green" cs) "yellow"]
        [(string=? "yellow" cs) "red"]))

; tl-render : TrafficLight -> Image
; renders the current state cs as an image
(check-expect (tl-render "red") (underlay BOX (beside (bulb "solid" "red") (bulb "outline" "black") (bulb "outline" "black"))))
(check-expect (tl-render "green") (underlay BOX (beside (bulb "outline" "black") (bulb "outline" "black") (bulb "solid" "green"))))
(check-expect (tl-render "yellow") (underlay BOX (beside (bulb "outline" "black") (bulb "solid" "yellow") (bulb "outline" "black"))))
(define (tl-render current-state)
  (cond [(string=? "red" current-state)
         (underlay BOX (beside (bulb "solid" "red") (bulb "outline" "black") (bulb "outline" "black")))]
        [(string=? "green" current-state)
         (underlay BOX (beside (bulb "outline" "black") (bulb "outline" "black") (bulb "solid" "green")))]
        [(string=? "yellow" current-state)
         (underlay BOX (beside (bulb "outline" "black") (bulb "solid" "yellow") (bulb "outline" "black")))]))
     
; traffic-light-simulation : TrafficLight -> TrafficLight
; simulates a clock-based American traffic light
(define (traffic-light-simulation initial-state)
  (big-bang initial-state
    [to-draw tl-render]
    [on-tick tl-next 1]))

(traffic-light-simulation "green")