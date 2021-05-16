;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-72) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct entry [name phone email])
; an Entry is a structure:
;   (make-entry String String String)
; interp: a contact's name, phone# and email


(define-struct phone [area number])
; a Phone is a structure:
;   (make-phone Number String)
; interp: a phone number

(define-struct phone# [area switch num])
; a Phone# is a structure:
;   (make-phone# Number Number Number)
; intervals: area: 000-999
;            switch: 000-999
;            num: 0000-9999