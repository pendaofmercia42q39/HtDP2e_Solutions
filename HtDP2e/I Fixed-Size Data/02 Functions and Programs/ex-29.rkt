;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-29) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define ATTENDEES 120)
(define PRICE 5.0)
(define ATTENDEE-CHANGE 15)
(define PRICE-CHANGE 0.1)
(define FIXED-COST 0)      ; was 180
(define VARIABLE-COST 1.5) ; was 0.04)

(define (attendees ticket-price)
  (- ATTENDEES (* (- ticket-price PRICE) (/ ATTENDEE-CHANGE PRICE-CHANGE))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ FIXED-COST (* VARIABLE-COST (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(profit 2)
(profit 2.92)
(profit 3)
(profit 4)
(profit 5)

(define (profit-v2 price)
  (- (* (+ 120
           (* (/ 15 0.1)
              (- 5.0 price)))
        price)
     (+ 0
        (* 1.5
           (+ 120
              (* (/ 15 0.1)
                 (- 5.0 price)))))))

(profit-v2 2)
(profit-v2 2.92)
(profit-v2 3)
(profit-v2 4)
(profit-v2 5)