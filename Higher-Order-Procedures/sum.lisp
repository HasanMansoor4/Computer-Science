; Not only we can use numbers as data, but we can use procedures as data
; as well. Procedueral Arguments. High order Functions. Functions as data
; useful to abstract their inner workings. Functional Programming approach
; Many implementations in imperative languages too 



; Two programs that have a lot in common.

; Procedure to sum integers between A and B
(DEFINE (SUM-INT A B) 
	(IF (> a b)
		0
		( + a 
			(SUM-INT (+ a) b))))

; Procedure to sum square of integers between A and B
(DEFINE (SUM-SQ A B)
	(IF (> a b)
		0
		(+ (SQUARE A)
			(SUM-SQ (+ a) b))))


; The two procedures follow a simple pattern. 
; (define (<name> a b)
;	(if (> a b)
;		0
;		(+ (<term> a)
;			(<name> (<next> a) b))))


; Pattern to catch first two proceduers.
(DEFINE (SUM TERM A NEXT B)
	(IF (> a b)
		0
		(+ (TERM A)
			(SUM TERM
				(NEXT A)
				NEXT 
				b))))

; Write first procedure sum-ints in terms of sum
(DEFINE (SUM-INT A B) 
	(DEFINE (IDENTITY A) A)
	(SUM IDENTITY A +1 B))

; Write 2nd pro sum-sq in terms of sum
(DEFINE (SUM-SQ A B)
	(DEFINE (SQUARE A)
		(* A A))
	(SUM SQUARE A +1  B))
 
