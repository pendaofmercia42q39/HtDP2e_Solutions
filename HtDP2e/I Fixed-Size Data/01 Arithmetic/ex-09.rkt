(require 2htdp/image)

(define in #false)

(if (string? in)
    (string-length in)
    (if (image? in)
        (* (image-width in)
           (image-height in))
        (if (number? in)
            (if (> in 0)
                (- in 1)
                (abs in))
            (if (boolean? in)
                (if in
                    10
                    20)
                "no"))))