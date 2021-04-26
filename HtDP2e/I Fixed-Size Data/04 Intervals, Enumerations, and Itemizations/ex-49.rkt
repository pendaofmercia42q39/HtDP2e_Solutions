;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-49) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

(define WIDTH 100)
(define HEIGHT 100)
(define MTSCN (empty-scene WIDTH HEIGHT))
(define ROCKET (bitmap "rocket.png"))
(define ROCKET-CENTER-TO-TOP
  (- HEIGHT (/ (image-height ROCKET) 2)))

;(define (create-rocket-scene.v5 h)
;  (cond [(<= h ROCKET-CENTER-TO-TOP)
;         (place-image ROCKET 50 h MTSCN)]
;        [(> h ROCKET-CENTER-TO-TOP)
;         (place-image ROCKET 50 ROCKET-CENTER-TO-TOP MTSCN)]))    ; (place-image ROCKET 50 ... MTSCN)

(define (create-rocket-scene.v5 h)
  (place-image ROCKET 50 (cond [(<= h ROCKET-CENTER-TO-TOP) h]
                               [(> h ROCKET-CENTER-TO-TOP) ROCKET-CENTER-TO-TOP])
               MTSCN))