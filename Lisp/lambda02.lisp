;; Lambda Expressions ;;

(defun smap(f L)
	(if (null L) nil
		(cons (funcall f (first L)) (smap f (rest L)))))

(defun sfilter(p L)
	(if (null L) nil
		(if (funcall p (first L)) (cons (first L) (sfilter p (rest L)))
			(sfilter p (rest L)))))
;; #1 ;;

(defun helper(a b L)
	(if (null L) nil
		(if (= (first L) a) (cons b (helper a (+ b 1) (rest L)))
			(helper a (+ b 1) (rest L)))))

(defun inde(a L) (helper a 1 L))


;; #2 ;;

(defun helperTwo(a b L)
	(if (null L) nil
		(if (= a 0) (helperTwo b b (rest L))
			(cons (first L) (helperTwo (- a 1) b L)))))

(defun nele(L a) (helperTwo a a L))


;; #3 ;;

(defun helperThree(a b c)
	(if (< a b) nil
		(if (= a b) T
			(helperThree a (* c b) (+ c 1)))))

(defun isFact(n) (helperThree n 1 1))


;; #4 ;;

(defun helperFour(n a b c)
	(if (<= n a) nil
		(cons (+ a (+ a b)) (helperFour n (+ a 1) (+ b c) (+ c 1)))))

(defun ntri(n) (helperFour n 0 1 0))


;; #5 ;;

(defun rmnil(L)
	(if (null L) nil
		(if (null (first L)) (rmnil (rest L))
			(cons (first L) (rmnil (rest L))))))


;; 6 ;;

(defun helperSix(L) 
	(smap (lambda(x) (if (>= (char-code x) 97) (code-char (- (char-code x) 32))
		x)) L))

(defun chcase(L) (coerce (helperSix (coerce L 'list)) 'string))


;; #7 ;;

(defun infront1(a L) (smap (lambda(x) (cons a x)) L))


;; #8 ;;

(defun insea(a L)
	(if (null L) (list (list a))
		(cons (cons a (cons (first L) (rest L))) (smap (lambda(x) (cons (first L) x)) (insea a (rest L))))))

;; #9 ;;

(defun cat(L1 L2)
	(if (null L1) L2
		(cons (first L1) (cat (rest L1) L2))))

(defun smap2(f L)
	(if (null L) nil
		(cat (funcall f (first L)) (smap2 f (rest L)))))

(defun permu(n)
	(if (= n 1) (list(list 1))
		(smap2 (lambda(x) (insea n x)) (permu (- n 1)))))


;; #10 - needs work;;

(defun getNumbers(n a)
	(if (= a n) (list n)
		(cons a (getNumbers n (+ a 1)))))

(defun isPrime(n i)
	(if (or (<= n 1) (= (mod n i) 0)) nil
		(if (or (= n 2) (>= i (floor n 2))) T
			(isPrime n (+ i 1)))))

(defun plist(n) (sfilter (lambda(x) (isPrime x 2)) (getNumbers n 0)))



