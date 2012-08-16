type person_t = {
	height : float;
	weight : float;
	birthday_month : int;
	birthday_day : int;
	bloodtype : string;
};;

let p1 = {height = 150.; weight = 40.; birthday_month = 1; birthday_day = 16; bloodtype = "A";}
let p2 = {height = 180.; weight = 55.; birthday_month = 4; birthday_day = 30; bloodtype = "B";}
let p3 = {height = 175.; weight = 53.; birthday_month = 12; birthday_day = 2; bloodtype = "O";}

(* 目的: person_t のリストを受け取ったら血液型が A 型の人数を返す *)
(* count_ketsueki_A : person_t list -> int *)
let rec count_ketsueki_A lst = match lst with
	[] -> 0
	| first :: rest ->  (if (first.bloodtype = "A") then 1 else 0) + count_ketsueki_A rest

let test1 = count_ketsueki_A [p1; p2; p3;] = 1;;
let test2 = count_ketsueki_A [p2; p3;] = 0;;
let test3 = count_ketsueki_A [] = 0;;

