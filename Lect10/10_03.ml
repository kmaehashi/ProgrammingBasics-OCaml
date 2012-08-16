#use "JAPANESE.ml"

type gakusei_t = { 
	namae : string;
	tensuu : int;
	seiseki : string;
}

(* 目的: tensuu で整列された学生のリスト lst と学生 n を受け取ったら lst の適切な位置に n を加える *)
(* gakusei_insert : int list -> int -> int list *)

let rec gakusei_insert lst n = match lst with
	[] -> [n;]
	| first :: rest ->
		if (first.tensuu < n.tensuu) then
			first :: gakusei_insert rest n
		else
			n :: lst
;;

(* 目的: gakusei_t 型のリストを受け取ったら tensuu の順にソートした gakusei_t 型のリストを返す *)
(* gakusei_sort : gakusei_t list -> gakusei_t list *)
let rec gakusei_sort lst = match lst with
	  [] -> []
	| first :: rest -> gakusei_insert (gakusei_sort rest) first

(* テスト *)
let g1 = {namae = "g1"; tensuu = 70; seiseki = "B";}
let g2 = {namae = "g2"; tensuu = 50; seiseki = "B";}
let g3 = {namae = "g3"; tensuu = 90; seiseki = "B";}

let test1 = gakusei_sort [g1; g2; g3] = [g2; g1; g3]
let test2 = gakusei_sort [g3; g2; g1] = [g2; g1; g3]
let test3 = gakusei_sort [] = []
