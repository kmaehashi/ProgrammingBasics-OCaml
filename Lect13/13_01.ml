#use "D:/Development/OCaml/Lect8/8_3.ml"
;;

let p1 = {name = "P1"; height = 150.; weight = 40.; birthday_month = 1; birthday_day = 16; bloodtype = "A";}
let p2 = {name = "P2"; height = 180.; weight = 55.; birthday_month = 4; birthday_day = 30; bloodtype = "B";}
let p3 = {name = "P3"; height = 175.; weight = 53.; birthday_month = 12; birthday_day = 2; bloodtype = "O";}
;;

let person_list = [p1; p2; p3]
;;

(* 目的: 渡されたリストの中で指定された血液型を持つ人の数を返す *)
(* count_ketsueki : person_t list -> string -> int *)
let rec count_ketsueki lst bloodtype = match lst with
	  [] -> 0
	| {name = n; height = h; weight = w; birthday_month = bm; birthday_day = bd; bloodtype = bt;} :: rest ->
		(if (bt = bloodtype) then 1 else 0) + count_ketsueki rest bloodtype
;;

(* テスト *)
let test1 = count_ketsueki [] "A" = 0
let test2 = count_ketsueki person_list "A" = 1
let test3 = count_ketsueki person_list "B" = 1
let test4 = count_ketsueki person_list "O" = 1
let test5 = count_ketsueki person_list "AB" = 0
let test6 = count_ketsueki person_list "X" = 0
;;
