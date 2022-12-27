#!/usr/local/bin/clisp

(defun fibonacci (n)
   "Return the nth Fibonacci number."
   (if (< n 2)
   	n
   	(+ (fibonacci (- n 1))
	   (fibonacci (- n 2))))
)

(setf input *args*)
(setf n (parse-integer (nth 0 input)))
(pprint n)
(setf output (fibonacci n))
(pprint output)
