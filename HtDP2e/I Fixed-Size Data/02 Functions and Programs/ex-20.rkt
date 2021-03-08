;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-20) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define str "hello_world")
(define ind "01234567890")

(define (string-delete str i)
  (string-append (substring str 0 i) (substring str (+ i 1))))

(string-delete str 4)

; this version can't deal with empty strings
