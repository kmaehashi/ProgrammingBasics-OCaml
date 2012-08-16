(* ��Ū: ���󤵤줿�����Υꥹ�� lst ������ n �������ä��� lst ��Ŭ�ڤʰ���(�����Ȥ��줿����)�� n ��ä��� *)
(* insert : int list -> int -> int list *)

let rec insert lst n = match lst with
	[] -> [n;]
	| first :: rest ->
		if (first < n) then
			first :: insert rest n
		else
			n :: lst
;;

(* ��Ū: Ϳ����줿�����Υꥹ�Ȥ򾺽�ǥ����Ȥ��� *)
(* ins_sort : int list -> int list *)

let rec ins_sort lst = match lst with
	[] -> []
	| first :: rest -> insert (ins_sort rest) first
;;

(* �ƥ��� *) 
let test1 = ins_sort [] = []
let test2 = ins_sort [2; 5; 3; 8; 1; 3] = [1; 2; 3; 3; 5; 8]
