#!/usr/local/bin/clisp

(defun factorize (n)
  (let ((xs (make-array '(5))))
    (dotimes (i 5)
      (setf (aref xs i) (* n i)))
    xs)
  )

(defun multiplier-reduce (a b)
  (* a b))

(defun multiplier-map (a)
  (* a 5))

(setf input *args*)
(setf n (parse-integer (first input)))
(pprint n)
(setf xs (factorize n))

(setf output-reduce-reference (reduce #'multiplier-reduce xs))
(pprint output-reduce-reference)

(setf output-map-reference (map 'list #'multiplier-map xs))
(pprint output-map-reference)

(setf output-reduce-inline (reduce #'(lambda (a b) (* a b)) (list 5 10 15 20 25)))
(pprint output-reduce-inline)

(setf output-map-inline (map 'list #'(lambda (a) (* a 5)) (list 5 10 15 20 25)))
(pprint output-map-inline)
