;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-73) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; posn-up-x : Posn Number -> Posn
; produces posn with n in the x-field of p
(check-expect (posn-up-x (make-posn 10 0) 2) (make-posn 2 0))
(define (posn-up-x p n)
  (make-posn n (posn-y p)))