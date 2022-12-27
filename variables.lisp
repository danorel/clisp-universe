#!/usr/local/bin/clisp

(defun one-variable (n)
  	(let ((x 2)
	      (y 3))
	  (* n x y))
)

(defun many-variables (n)
  	(let* ((x 2)
	       (y (+ x 1)))
	  (values n (* n x) (* n y)))
)

(setf input *args*)
(setf n (parse-integer (nth 0 input)))
(pprint n)

(setf output-variable (one-variable n))
(pprint output-variable)

(setf output-variables (multiple-value-list (many-variables n)))
(pprint output-variables)
