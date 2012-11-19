; Excercise 1.5
; Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

(test 0 (p))


; Applicative order
; expands out the (x = 0) if it isn't zero it infinitly recurses, otherwise it doesn't expand the y and returns 0
;
;
; Normal order
; infinite recurse
