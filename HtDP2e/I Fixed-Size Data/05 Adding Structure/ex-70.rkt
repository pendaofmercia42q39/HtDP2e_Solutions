;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-70) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct centry [name home office cell])

(centry-name
 (make-centry "John Doe" "666-0451" "123-4567" "321-3456"))
(centry-home
 (make-centry "John Doe" "666-0451" "123-4567" "321-3456"))
(centry-office
 (make-centry "John Doe" "666-0451" "123-4567" "321-3456"))
(centry-cell
 (make-centry "John Doe" "666-0451" "123-4567" "321-3456"))

(define-struct phone [area number])
(phone-area
 (make-phone "451" "045-1234"))
(phone-number
 (make-phone "451" "045-1234"))

(phone-area
 (centry-office
  (make-centry "Shriram Fisler"
    (make-phone 207 "363-2421")
    (make-phone 101 "776-1099")
    (make-phone 208 "112-9981"))))