(* ��Ū: �������� n ����ͤ��֤� *)
(* a : int -> int *)
let rec a n = 
	if (n = 0) then 3
	else 2 * a (n - 1) - 1
;;

(* �ƥ��� *)
let test1 = a 0 = 3
let test2 = a 1 = 5
let test3 = a 5 = 65
;;
