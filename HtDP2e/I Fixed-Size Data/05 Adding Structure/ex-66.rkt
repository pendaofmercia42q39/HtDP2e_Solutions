;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-66) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct movie [title producer year])
(define t (make-movie "Lawrence of Arabia" "Horizon Pictures" "1962"))
;(movie-title t)            
;(movie-producer t)
;(movie-year t)

(define-struct person [name hair eyes phone])
(define some1 (make-person "Nomen Nescio" "Blond" "Blue" "4445001"))
;(person-name some1)
;(person-hair some1)
;(person-eyes some1)
;(person-phone some1)

(define-struct pet [name number])
(define dog (make-pet "Fido" "0451"))
;(pet-name dog)
;(pet-number dog)

(define-struct CD [artist title price])
(define tunes (make-CD "Depeche Mode" "Violator" "12.99"))
;(CD-artist tunes)
;(CD-title tunes)
;(CD-price tunes)

(define-struct sweater [material size producer])
(define sw (make-sweater "Wool" "Large" "Some fisherman"))
;(sweater-material sw)
;(sweater-size sw)
;(sweater-producer sw)