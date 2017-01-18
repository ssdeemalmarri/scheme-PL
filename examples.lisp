;smallest elemnt in a list 
(define (smallest a list)
(cond 
	((Null? list) a)
	((< a (car list)) (smallest a (cdr list)))
	(else (smallest (car list) (cdr list)))
	))

;merge sort assume L and M are sorted lists

(define (mergesort list1 list2)
(cond 
	((Null? list1) list2)
	((Null? list2)list1)
	((< (car list1) (car list2)) 
		(cons (car list1) (mergesort (cdr list1) list2)))
	(else (cons (car list2) (mergesort list1 (cdr list2))))
	))

 ; # No of elements in a list

 (define (numOfelm list)
 	(cond
 		((Null? list)0)
 		(else (+ 1 (numOfelm (cdr list))) )
 		))
;Given a non-negative integer n, computer the sum of all integers from 0 to n.
 (define (sum n)
 	(cond 
 		((= n 0)0)
 		(else (+ n (sum (- n 1))))
 		))

 ; sum of elements in list 

 (define (sumlist list)
 	(cond 
 		((null? list)0)
 		(else (+ (car list) (sumlist (cdr list))))
 		))


;longest list
(define (longest list1 list2 )
(cond 
	((Null? list1) (null? list2) -1)
	((Null? list1) list2)
	((null? list2) list1)
    ((< (numOfelm list1) (numOfelm list2)) (numOfelm list2))
    (else (numOfelm list1))))

; return nimber of zeros 

(define (numzero list)
(cond 
	((null? list )0)
	((= 0 (car list)) (+ 1 (numzero (cdr list))))
	(else (numzero (cdr list)))
	)
)


;A power B
(define (power A B)
    (cond
      ((= B 0) 1)
      ((= B 1) A)
      (else (* A (power A (- B 1))))))

; remove the object from the list
(define remv
  (lambda (x ls)
    (cond
      [(null? ls) '()]
      [(eqv? (car ls) x) (remv x (cdr ls))]
      [else (cons (car ls) (remv x (cdr ls)))])))      


(define (fibbonaci n)
	(cond 
     ((= n 0)0)
     ((= n 1) 1)
     (else (+ (fibbonaci (- n 1) (fibbonaci(- n 2)))))))		


; fibbonaci 
(define (fib n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))


;Min-max list
(DEFINE (max list)
         (COND
                        ((NULL? list) ‘())
                        ((NULL? (CDR list)) (CAR list))
                        ((> (CAR list) (max (CDR list))) (CAR list))
                        (ELSE (max (CDR list)))
         )
      )    
 
      (DEFINE (min list)
         (COND
                        ((NULL? list) ‘())
                        ((NULL? (CDR list)) (CAR list))
                        ((< (CAR list) (min (CDR list))) (CAR list))
                        (ELSE (min (CDR list)))
         )
      )    
 
(DEFINE (minmax  list) (CONS (min list) (CONS (max list) '())))

( define (rem-last list)
	(if (null? (cdr list))
	'()
	(cons (car list) (rem-last (cdr list))))

; remove second element 

(define (sec list)
    (cond
      ((null? list) '())
      ((null? (cdr list)) '())
      (else (cons (car list) (cddr list)))))	


