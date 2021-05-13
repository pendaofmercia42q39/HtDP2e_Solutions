;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-67) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct ball [location velocity])

(define a-ball (make-ball 10 -3))
;(ball-velocity a-ball) ; clear vs (posn-y a-ball)

(define SPEED 3)
(define-struct balld [location direction])
(make-balld 10 "up")
(make-balld 0 "down")
(make-balld 4 "up")