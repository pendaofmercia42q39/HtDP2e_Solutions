(require 2htdp/image)

(define (image-classify img)
  (if (= (image-height img) (image-width img))
    "square"
    (if (>= (image-height img) (image-width img))
        "tall"
        "wide")))

(image-classify (rectangle 10 40 "solid" "green"))
(image-classify (rectangle 40 10 "solid" "green"))
(image-classify (rectangle 10 10 "solid" "green"))