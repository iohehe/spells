#lang racket
;; square
(define (square x) (* x x))
(square 2)

;; sum of squares
(define (sum-of-squares x y) (+ (square x) (square y)))
(sum-of-squares 1 2)

;;abs
(define (abs x)
   (cond ((> x 0) x)
         ((= x 0) 0)
         ((< x 0) (- x))))
(abs -1)

(define (abs_if x)
   (if (< x 0)
       (- x)
       x))
(abs_if -1)

;;ex 1.2
(/ (+ 5 (+ 4 (- 2 (- 3 (+ 6 (/ 4 5)))))) (* 3 (* (- 6 2)(- 2 7))))

;; ex 1.3
(define (f x y z)
   (cond ((and (< x y) (< x z)) (sum-of-squares y z))
         ((and (< y x) (< y z)) (sum-of-squares x z))
         (else (sum-of-squares x y))       
         )
  )
     
(f 1 2 3)