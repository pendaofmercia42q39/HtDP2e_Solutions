;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-48) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; A PositiveNumber is a Number greater than/equal to 0.

; PositiveNumber -> String
; computes the reward level from the given score s
;(check-expect (reward 3) "bronze")
;(check-expect (reward 14) "silver")
;(check-expect (reward 21) "gold")
(define (reward s)
  (cond
    [(<= 0 s 10) "bronze"]
    [(and (< 10 s) (<= s 20)) "silver"]
    [else "gold"]))

(reward 18)

; Racket evaluates the condition expressions inside cond,
; if ConditionExpression1 is #false, ConditionExpression2
; is evaluated.  Process repeats until ConditionExpressionN
; is #true.

; Note: If ConditionExpressionN is #false, ResultExpressionN isn't
; even evaluated.  Replace "bronze" with (/ 1 0)