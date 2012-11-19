(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
	       x)))
(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)

(define (new-if predicate the-clause else-clause)
  (cond (predicate the-clause)
	(else else-clause)))

(new-if (= 2 3) 0 5)


(define (sqrt-iter-new guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter-new (improve guess x)
	       x)))

(sqrt-iter-new 1.0 9)

;It attempts to expand the good-enough? all the way down which results in a maximum recursion depth

