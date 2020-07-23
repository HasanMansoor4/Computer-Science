; Recursive example
(define (factorial n) 
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

; Recursive example steps		|
; (factorial 4)				|
; (4 x (factorial 3))			|
; (4 x (3 x factorial 2))		|
; (4 x (3 x (2 x factorial 1)))		|
; (4 x (3 x (2 x 1)))			|
; (4 x (3 x 2))				|
; (4 x 6)				|
; 24					|
;					v
;					time
; -------------------------------------> 
;		Space 


; Memory intensive, recursive functions need to remember previous recursive calls 
; The functions defer their multiplication step until the next recursive function
; returns it's result. This takes up memeory and it heavily utilieses the stack 
; therefore space complexity is not ideal O(n).  
