;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-61) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

(define RED "red")
(define GREEN "green")
(define YELLOW "yellow")

; An S-TrafficLight is one of:
; -- RED
; -- GREEN
; -- YELLOW

; tl-next-numeric : S-TrafficLight -> S-TrafficLight
; yields the next state, given current state cs
(check-expect (tl-next-numeric 0) 1)
(check-expect (tl-next-numeric 1) 2)
(check-expect (tl-next-numeric 2) 0)
(define (tl-next-numeric cs)
  (modulo (+ cs 1) 3))

; tl-next-symbolic : S-TrafficLight -> S-TrafficLight
; yields the next state, given current state cs
(check-expect (tl-next-symbolic RED) GREEN)
(check-expect (tl-next-symbolic GREEN) YELLOW)
(check-expect (tl-next-symbolic YELLOW) RED)
(define (tl-next-symbolic cs)
  (cond [(equal? cs RED) GREEN]
        [(equal? cs GREEN) YELLOW]
        [(equal? cs YELLOW) RED]))

; tl-next-numeric is fragile.