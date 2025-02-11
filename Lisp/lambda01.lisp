
; #1 ;
(defun changeSign(x)
	(- x))

(defun product(a b)
	(if (= a 0) 0
		(if (< a 0) (- (product (changeSign a) b)) 
			(if (< b 0) (- (product a (changeSign b)))
				(+ b (product (- a 1) b))))))

; #2 ;
(defun delnthc(L a)
	(if (null L) nil
		(if (= a 1) (delnthc (rest L) (- a 1))
			(cons (first L) (delnthc (rest L) (- a 1))))))

; #3 ;
(defun helper(L a)
	(if (null L) nil 
		(if (= a 1) (cons (first L) (helper (rest L) (- a 1)))
			(helper (rest L) (- a 1)))))

(defun dispnthc(L a) (first (helper L a)))

; #4 ;
(defun pairStar(L)
	(if (null L) nil
		(if (null (rest L)) (list (first L))
			(if (equal (first L) (first (rest L))) (cons (first L) (cons '* (pairStar (rest L)))) 
				(cons (first L) (pairStar (rest L)))))))

; #5 ;
(defun remv(a L)
	(if (null L) nil
		(if (equal (first L) a) (remv a (rest L))
			(cons (first L) (remv a (rest L))))))

; 6 uses remv() ;
(defun remvdub(L)
	(if (null L ) nil
		(cons (first L) (remvdub (remv (first L) L)))))

; 7 ;
(defun inc1(a L)
	(if (null L) nil
		(if (= a (first(first L))) (cons (list (first(first L)) (+ (first (rest (first L))) 1)) (inc1 a (rest L)))
			(cons (first L) (inc1 a (rest L))))))

; #8 ;
(defun min2(L)
	(if (null (rest L)) 0
		(if (null (rest (rest L))) (first (rest L))
			(if (> (first L) (first (rest L))) (min2 (cons (first (rest L)) (cons (first L) (cons (first (rest (rest L))) (rest (rest (rest (rest L))))))))
				(if (< (first (rest (rest L))) (first L)) (min2 (cons (first (rest (rest L))) (cons (first L) (cons (first (rest (rest L))) (rest (rest (rest (rest L))))))))
					(if (and (> (first (rest (rest L))) (first L)) (< (first (rest (rest L))) (first (rest L)))) (min2 (cons (first L) (cons (first (rest (rest L))) (rest (rest (rest (rest L)))))))
						(min2 (cons (first L) (cons (first (rest L)) (rest (rest (rest (rest L)))))))))))))

;; #9 ;;
(defun app (L1 L2)
  (if (null L1) L2
      (cons (first L1) (app (rest L1) L2))))

(defun helperNine (n)
  (if (= n 0) nil  ; Return a list containing '0'
      (if (< n 0) 
          (cons #\- (helperNine (abs n)))
          (app (helperNine (floor n 10)) (cons (code-char (+ 48 (mod n 10))) nil)))))

(defun int2str (n) 
  (coerce (helperNine n) 'string))




;; #10 ;;

(defun zeroAdder(L)
  (if (null L) 1
    (* 10 (zeroAdder (rest L)))))

(defun helperTen(L)
  (if (null L) 0
    (if (equal (first L) #\-) (- (helperTen (rest L)))
      (+ (helperTen (rest L)) (* (- (char-code (first L)) 48) (floor (zeroAdder L) 10))))))


(defun str2int(L) (helperTen (coerce L 'list)))


;; #11 ;;

(defun helperEleven(L)
  (if (null L) nil
    (if (or (< (char-code (first L)) 97) (> (char-code (first L)) 122)) (cons (first L) (helperEleven (rest L)))
      (cons (code-char (- (char-code (first L)) 32)) (helperEleven (rest L))))))

(defun toupp(L) (coerce (helperEleven (coerce L 'list)) 'string))


;; To be completed... ;;

;; #12 ;;



