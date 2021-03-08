(define str "helloworld")
(define ind "0123456789")
(define i 5)

(string-append (substring str 0 i) "_" (substring str i 10)) ; hello_world