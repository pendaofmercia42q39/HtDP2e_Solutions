(define sunny #true)
(define friday #false)

(or (not sunny) friday) ; because (or #false friday) -> #false

(and #false sunny)
(and #true friday)