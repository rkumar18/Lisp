(defun makeeven(num)
	(if (= (rem num 2) 0)
    (format t "~%number: ~D" (num))
    (format t "~%number: ~D" (+ num 1)))
   
)
(makeeven 11)