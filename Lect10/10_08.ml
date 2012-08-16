#use "JAPANESE.ml";;
#use "D:/Development/OCaml/Lect10/10_07.ml";;

(* 目的: person_t 型のリストを受け取ったら最多の血液型を返す *)
(* saita_ketsueki : person_t list -> string *)
let rec saita_ketsueki lst = let (a, b, o, ab) = ketsueki_shukei lst in
	     if (b <= a && o <= a && ab <= a) then "A"
	else if (a <= b && o <= b && ab <= b) then "B"
	else if (a <= o && b <= o && ab <= o) then "O"
	else "AB"
;;

(* テスト *)
let p1 = {name = "P1"; height = 150.; weight = 40.; birthday_month = 1; birthday_day = 16; bloodtype = "A";}
let p2 = {name = "P2"; height = 180.; weight = 55.; birthday_month = 4; birthday_day = 30; bloodtype = "B";}
let p3 = {name = "P3"; height = 175.; weight = 53.; birthday_month = 12; birthday_day = 2; bloodtype = "O";}
let p4 = {name = "P4"; height = 180.; weight = 55.; birthday_month = 4; birthday_day = 30; bloodtype = "B";}

let test1 = saita_ketsueki [p1; p2; p3; p4] = "B"
let test2 = saita_ketsueki [p3;] = "O"
let test3 = saita_ketsueki [] = "A"
