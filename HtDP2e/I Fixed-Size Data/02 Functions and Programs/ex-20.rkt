(define str "hello_world")
(define ind "01234567890")

(define (string-delete str i)
  (string-append (substring str 0 i) (substring str (+ i 1))))

(string-delete str 4)

; this version can't deal with empty strings