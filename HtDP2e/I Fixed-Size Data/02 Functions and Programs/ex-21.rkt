;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-21) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (ff a) (* 10 a))

(ff (ff 1))
; Step 1: (ff (ff 1)) -> (ff (* 10 1))
; Step 2: (ff (* 10 1)) -> (ff 10)
; Step 3: (ff 10) -> (* 10 10)
; Step 4: (* 10 10) -> 100

(+ (ff 1) (ff 1))
; Step 1: (+ (ff 1) (ff 1)) -> (+ (* 10 1) (ff 1))
; Step 2: (+ (* 10 1) (ff 1)) -> (+ 10 (ff 1))
; Step 3: (+ 10 (ff 1)) -> (+ 10 (* 10 1))
; Step 4: (+ 10 (* 10 1)) -> (+ 10 10)
; Step 5: (+ 10 10) -> 20

; the stepper doesn't reuse the results of computations