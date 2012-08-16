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


let test1 = insert [] 3 = [3;]
let test2 = insert [1; 5;] 3 = [1; 3; 5;]
