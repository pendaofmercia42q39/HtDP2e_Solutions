(require 2htdp/image)

(define box (rectangle 40 40 "solid" "green"))

(define (image-area img)
  (* (image-width img) (image-height img)))

(image-area box)