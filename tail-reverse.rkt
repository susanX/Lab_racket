#lang racket
;recursive


(define (my-reverse my-list)
  (if (null? my-list)
      '()
      (append 
       (my-reverse (cdr my-list))  (list (car my-list )) )
      
      )
  )

(my-reverse '(1 2 3))


;/////////////////////////////////////////////////////////////////////////////////////////

;tail recursive


(define 
  (tail-reverse my-list sofar)
  (
   if (null? my-list)
     sofar
     
     ;else
     (tail-reverse (cdr my-list) (append (list(car my-list)) sofar))
  )
)
 
(tail-reverse '(1 2 3 4 5 6 7 8 9 10) '())
  
  