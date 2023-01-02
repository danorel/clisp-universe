#!/usr/local/bin/clisp

(defun factorial (n)
	(if (< n 2)
	1
	(* n (factorial (- n 1))))
)

(setf input *args*)
(setf n (parse-integer (first input)))
(pprint n)
(setf output (factorial n))
(pprint output)
