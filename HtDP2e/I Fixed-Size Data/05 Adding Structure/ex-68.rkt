;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-68) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct ball [location velocity])
(define-struct ballf [x y deltax deltay])
(define-struct vel [deltax deltay])

(define ball1 (make-ball (make-posn 30 40) (make-vel -10 5)))

(define ball2 (make-ballf (posn-x (make-posn 30 40))
                          (posn-y (make-posn 30 40))
                          (posn-x (make-posn -10 5))
                          (posn-y (make-posn -10 5))))
ball1
ball2
(make-ballf 30 40 -10 5)