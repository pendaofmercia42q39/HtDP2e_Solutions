(define str "helloworld")
(define i 5) ; valid for 0-9

(string-append (substring str 0 i) (substring str (+ i 1)))