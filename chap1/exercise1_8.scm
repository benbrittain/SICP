

(define (cube-root x)
  (define (good-enough? guess x)
    (< 
      (abs (- (* guess guess guess) x)) 
      (* x 0.000000001)))
  (define (improve guess x)
    (/ 
      (+ (/ x (square guess))
	 (* 2 guess))
      3))
  (define (cube-root-iter guess x)
    (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x)
		      x)))
  (cube-root-iter 1.0 x))

(cube-root 8)
