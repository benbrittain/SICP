(define (+ a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))))

(+ 4 5)
(+ 1 (+ 3 5))
(+1 (+ 1 (+ 2 5)))
(+1 (+1 (+ 1 (+ 1 5))))
(+ 1 (+1 (+1 (+ 1 (+ 0 5)))))
(+ 1 (+1 (+1 (+ 1 5))))
(+ 1 (+1 (+1 6)))
(+ 1 (+1 7))
(+ 1 8)
9
; Recursive procedure with an recursive process

(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))))
(+ 4 5)
(+ 3 6)
(+ 2 7)
(+ 1 8)
(+ 0 9)
9
; Recursive procedure with an iterative process

(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

