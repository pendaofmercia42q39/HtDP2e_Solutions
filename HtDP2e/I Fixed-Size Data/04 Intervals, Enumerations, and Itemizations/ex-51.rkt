;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-51) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

(define DELAY 2)

; A TrafficLight is one of the following Strings:
; -- "red"
; -- "green"
; --- "yellow"
; interpretation: the three strings represent the three
; possible states that a traffic light may assume

; TrafficLight -> TrafficLight
; yields the next state given current state s
(check-expect (traffic-light-next "red") "green")
(check-expect (traffic-light-next "green") "yellow")
(check-expect (traffic-light-next "yellow") "red")
(define (traffic-light-next s)
  (cond [(string=? "red" s) "green"]
        [(string=? "green" s) "yellow"]
        [(string=? "yellow" s) "red"]))

; TrafficLight -> TrafficLight
; gives the next traffic light
(check-expect (tock "red") "green")
(check-expect (tock "green") "yellow")
(check-expect (tock "yellow") "red")
(define (tock tl)
  (traffic-light-next tl))

; TrafficLight -> Image
; renders the scene
(define (render tl)
  (circle 25 "solid" tl))

(define (main ws)
  (big-bang ws
    [to-draw render]
    [on-tick tock DELAY]))