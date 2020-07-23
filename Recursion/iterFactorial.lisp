; Iterative-recursive example
(define (factorial n)
  (define (factorial-iter result counter)
    (if (> counter n)
        result
        (factorial-iter (* result counter)
                        (+ counter 1))))
  (factorial-iter 1 1))

; Iterative-recursive example steps

; (factorial 4)		|
; (factorial-iter 1 1)	|
; (factorial-iter 1 2)	|
; (factorial-iter 2 3)	|
; (factorial-iter 6 4)	|
; (factorial-iter 24 5)	|
; 24			|
; --------------------> V
	Space		time

; As we can see iterative approach takes up less space and time
; CPU instead of Memory Stack
