;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-56) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

(define WIDTH 100) ; distances in pixels
(define HEIGHT 300)
(define YDELTA 3)
(define BACKG (empty-scene WIDTH HEIGHT))
(define ROCKET (rectangle 5 30 "solid" "red"))
(define CENTER (/ (image-height ROCKET) 2))
(define TICKRATE 1/10)

; An LRCD (for launching rocket countdown) is one of:
; -- "resting"
; -- a Number between -3 and -1
; -- a NonnegativeNumber
; interpretation: a grounded rocket, in countdown mode,
; a number denotes the number of pixels between the
; top of the canvas and the rocket (its height)

; main1 : LRCD -> LRCD
(define (main1 s)
  (big-bang s
    [to-draw show]
    [on-key launch]))

; main2 : LRCD -> LRCD
(define (main2 s)
  (big-bang s
    [to-draw show]
    [on-key launch]
    [on-tick fly TICKRATE]
    [stop-when off-screen?]))
             
; place-rocket : NonnegativeNumber -> Image
; places rocket at given height
(check-expect (place-rocket 53)
              (place-image ROCKET 10 (- 53 CENTER) BACKG))
(define (place-rocket x)
  (place-image ROCKET 10 (- x CENTER) BACKG))

; show : LRCD -> Image
; renders the state as a resting or flying rocket
(check-expect (show "resting")
              (place-image ROCKET 10 (- HEIGHT CENTER) BACKG))
(check-expect (show -2)
              (place-image (text "-2" 20 "red")
                           10 (* 3/4 WIDTH)
                           (place-image ROCKET 10 (- HEIGHT CENTER) BACKG)))
(check-expect (show 53)
              (place-image ROCKET 10 (- 53 CENTER) BACKG))
(define (show x)
  (cond [(string? x) (place-rocket HEIGHT)]                                 ; 1st sub-class of LRCD
        [(<= -3 x -1) (place-image (text (number->string x) 20 "red")       ; 2nd sub-class of LRCD
              10 (* 3/4 WIDTH)
              (place-rocket HEIGHT))]
        [(>= x 0) (place-rocket x)]))                                       ; 3rd sub-class of LRCD

; launch : LRCD KeyEvent -> LRCD
; starts the countdown when space bar is pressed,
; if the rocket is still resting
(check-expect (launch "resting" " ") -3)
(check-expect (launch "resting" "a") "resting")
(check-expect (launch -3 " ") -3)
(check-expect (launch -1 " ") -1)
(check-expect (launch 33 " ") 33)
(check-expect (launch 33 "a") 33)
(define (launch x ke)
  (cond [(string? x) (if (string=? " " ke) -3 x)]
        [(<= -3 x -1) x]
        [(>= x 0) x]))
  
; fly : LRCD -> LRCD
; raises the rocket by YDELTA, if it is moving already
(check-expect (fly "resting") "resting")
(check-expect (fly -3) -2)
(check-expect (fly -2) -1)
(check-expect (fly -1) HEIGHT)
(check-expect (fly 10) (- 10 YDELTA))
(check-expect (fly 22) (- 22 YDELTA))
(define (fly x)
  (cond [(string? x) x]
        [(<= -3 x -1) (if (= x -1) HEIGHT (add1 x))]
        [(>= x 0) (- x YDELTA)]))

; off-screen? : LRCD -> Boolean
(check-expect (off-screen? "resting") #false)
(check-expect (off-screen? -3) #false)
(check-expect (off-screen? -2) #false)
(check-expect (off-screen? -1) #false)
(check-expect (off-screen? HEIGHT) #false)
(check-expect (off-screen? 0) #true)
(define (off-screen? x)
  (cond [(number? x) (if (= x 0) #true #false)]
        [else #false]))