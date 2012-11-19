; Excercise 1.3
; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

(define (sum-of-squares x y)
  (+ (* x x) (* y y)))

(define (square-two-largest x y z)
  (cond 
    ((and (< x y) (< x z)) (sum-of-squares y z))
    ((and (< y x) (< y z)) (sum-of-squares x z))
    ((and (< z x) (< z y)) (sum-of-squares x y))))

(sum-of-squares 4 3 )

(square-two-largest 2 3 4)
