(define (string-last s)
  (if (= (string-length s) 0)
      "empty string!"
      (string-ith s (- (string-length s) 1))))

(string-last "")
(string-last "foobar")