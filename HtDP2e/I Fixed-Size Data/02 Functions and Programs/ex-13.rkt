(define (string-first s)
  (if (= (string-length s) 0)
      "empty string!"
      (string-ith s 0)))

(string-first "")
(string-first "foobar")