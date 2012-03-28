#!/usr/local/bin/racket -r

(define (divisible x n)
  (if (= 0 (remainder x n))
    #t
    #f))

(define (fb n)
  (if (= 0 n)
    #t
    (begin
      (fb (- n 1))
      (cond
        [(divisible n 15) (printf "FizzBuzz")]
        [(divisible n 5 ) (printf "Buzz")]
        [(divisible n 3 ) (printf "Fizz")]
        [else (print n)]
      )
      (printf "\n")
    )))

(fb 100)

