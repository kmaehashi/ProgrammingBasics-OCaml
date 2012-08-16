(* ��Ū: �Ϥ��줿 2 �ؿ��ι����ؿ����֤� *)
(* compose : ('a -> 'b) -> ('c -> 'a) -> 'c -> 'b *)
let compose f g = let h x = f (g x) in h
;;

(* �ƥ��� *)
let test =
	(compose
		(let time2 x = x * 2 in time2)
		(let add3 x = x + 3 in add3)
	) 4 = 14
;;
