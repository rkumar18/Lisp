(defun findfactor (term) 
  (car term))

(defun findpower (term)
  (cadr term))

(defun maketerm(factor power)
  (list factor power))

(defun add-poly (poly1 poly2)

  (if (null poly1) poly2
    (if (null poly2) poly1
  (let ( (term1 (car poly1)) (term2 (car poly2)) )
    (if (= (findpower term1) (findpower term2)) 
        (maketerm (+ (findfactor term1) (findfactor term2)) (findpower term1))
      (if (> (findpower term1) (findpower term2))
          (append poly1 poly2) (append poly2 poly1)))
    (add-poly (cadr poly1) (cadr poly2))))))
(print (add-poly '((2 2 )(2 1)) '(( 3 2 ))))