#use "JAPANESE.ml"

type person_t = {
	name : string;
	height : float;
	weight : float;
	birthday_month : int;
	birthday_day : int;
	bloodtype : string;
};;

(* 目的: name で整列された person_t のリスト lst と person_t n を受け取ったら lst の適切な位置に n を加える *)
(* person_insert : person_t list -> person_t -> person_t list *)

let rec person_insert lst n = match lst with
	[] -> [n;]
	| first :: rest ->
		if (first.name < n.name) then
			first :: person_insert rest n
		else
			n :: lst
;;

(* 目的: person_t 型のリストを受け取ったら name の順にソートした person_t 型のリストを返す *)
(* person_sort : person_t list -> person_t list *)
let rec person_sort lst = match lst with
	  [] -> []
	| first :: rest -> person_insert (person_sort rest) first
;;

(* テスト *)
let p1 = {name = "P1"; height = 150.; weight = 40.; birthday_month = 1; birthday_day = 16; bloodtype = "A";}
let p2 = {name = "P2"; height = 180.; weight = 55.; birthday_month = 4; birthday_day = 30; bloodtype = "B";}
let p3 = {name = "P3"; height = 175.; weight = 53.; birthday_month = 12; birthday_day = 2; bloodtype = "O";}

let test1 = person_sort [p1; p2; p3] = [p1; p2; p3]
let test2 = person_sort [p3; p2; p1] = [p1; p2; p3]
let test3 = person_sort [] = []
