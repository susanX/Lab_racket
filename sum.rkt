#lang racket

(define(sum list)
  
  (if(empty? list)
     
     0
     
     (+(car list)
       
       (sum(cdr list)
           
           ))))

"-------------------------------"
(sum(list 1 2 3 4 5 6 7 8 9 0 ))

"----------------------------------"