(* 目的: 整列された整数のリスト lst と整数 n を受け取ったら lst の適切な位置(ソートされた位置)に n を加える *)
(* insert : int list -> int -> int list *)

let rec insert lst n = match lst with
	[] -> [n;]
	| first :: rest ->
		if (first < n) then
			first :: insert rest n
		else
			n :: lst
;;

(* 目的: 与えられた整数のリストを昇順でソートする *)
(* ins_sort : int list -> int list *)

let rec ins_sort lst = match lst with
	[] -> []
	| first :: rest -> insert (ins_sort rest) first
;;

(* テスト *) 
let test1 = ins_sort [] = []
let test2 = ins_sort [2; 5; 3; 8; 1; 3] = [1; 2; 3; 3; 5; 8]
