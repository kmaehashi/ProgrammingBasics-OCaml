#use "JAPANESE.ml";;

type person_t = {
	name : string;
	height : float;
	weight : float;
	birthday_month : int;
	birthday_day : int;
	bloodtype : string;
};;

(* 目的: person_t 型のリストを受け取ったら血液型を集計 *)
(* ketsueki_shukei : person_t list -> int * int * int * int *)
let rec ketsueki_shukei lst = match lst with
	  [] -> (0, 0, 0, 0)
	| first :: rest -> 
		let (a, b, o, ab) = ketsueki_shukei rest in
			if first.bloodtype = "A" then (a + 1, b, o, ab)
			else if first.bloodtype = "B" then (a, b + 1, o, ab)
			else if first.bloodtype = "O" then (a, b, o + 1, ab)
			else (a, b, o, ab + 1)
;;

(* テスト *)
let p1 = {name = "P1"; height = 150.; weight = 40.; birthday_month = 1; birthday_day = 16; bloodtype = "A";}
let p2 = {name = "P2"; height = 180.; weight = 55.; birthday_month = 4; birthday_day = 30; bloodtype = "B";}
let p3 = {name = "P3"; height = 175.; weight = 53.; birthday_month = 12; birthday_day = 2; bloodtype = "O";}

let test1 = ketsueki_shukei [p1; p2; p3] = (1, 1, 1, 0)
let test2 = ketsueki_shukei [p3; p2] = (0, 1, 1, 0)
let test3 = ketsueki_shukei [] = (0, 0, 0, 0)
