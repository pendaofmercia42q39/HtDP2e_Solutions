;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-14) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (string-last s)
  (if (= (string-length s) 0)
      "empty string!"
      (string-ith s (- (string-length s) 1))))

(string-last "")
(string-last "foobar")
