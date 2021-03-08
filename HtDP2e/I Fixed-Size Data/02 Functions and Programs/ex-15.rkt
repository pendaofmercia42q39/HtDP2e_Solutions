(define (==> sunny friday)
  (or (not sunny) friday))

(define sunny #false)
(define friday #true)

(==> sunny friday)