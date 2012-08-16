(* 目的: 誕生日から星座を求める *)
(* seiza : int -> int -> string *)
let seiza m d = 
	     if (m =  1 && 21 <= d && d <= 30) || (m =  2 && 1 <= d && d <= 19) then "MIZUGAME-ZA"
	else if (m =  2 && 20 <= d && d <= 29) || (m =  3 && 1 <= d && d <= 20) then "UO-ZA"
	else if (m =  3 && 21 <= d && d <= 31) || (m =  4 && 1 <= d && d <= 20) then "OHITSUJI-ZA"
	else if (m =  4 && 21 <= d && d <= 30) || (m =  5 && 1 <= d && d <= 21) then "OUSHI-ZA"
	else if (m =  5 && 22 <= d && d <= 31) || (m =  6 && 1 <= d && d <= 21) then "FUTAGO-ZA"
	else if (m =  6 && 22 <= d && d <= 30) || (m =  7 && 1 <= d && d <= 22) then "KANI-ZA"
	else if (m =  7 && 23 <= d && d <= 31) || (m =  8 && 1 <= d && d <= 22) then "SHISHI-ZA"
	else if (m =  8 && 23 <= d && d <= 31) || (m =  9 && 1 <= d && d <= 22) then "OTOME-ZA"
	else if (m =  9 && 23 <= d && d <= 30) || (m = 10 && 1 <= d && d <= 23) then "TENBIN-ZA"
	else if (m = 10 && 24 <= d && d <= 31) || (m = 11 && 1 <= d && d <= 22) then "SASORI-ZA"
	else if (m = 11 && 23 <= d && d <= 30) || (m = 12 && 1 <= d && d <= 22) then "ITE-ZA"
	else if (m = 12 && 23 <= d && d <= 31) || (m =  1 && 1 <= d && d <= 20) then "YAGI-ZA"
	else "INVALID DATE"

type person_t = {
	name : string;
	height : float;
	weight : float;
	birthday_month : int;
	birthday_day : int;
	bloodtype : string;
};;

let p1 = {name = "P1"; height = 150.; weight = 40.; birthday_month = 1; birthday_day = 16; bloodtype = "A";}
let p2 = {name = "P2"; height = 180.; weight = 55.; birthday_month = 4; birthday_day = 30; bloodtype = "B";}
let p3 = {name = "P3"; height = 175.; weight = 53.; birthday_month = 9; birthday_day = 2; bloodtype = "O";}

(* 目的: person_t のリストを受け取ったらおとめ座の人の名前リストを返す *)
(* otomeza : person_t list -> string list *)
let rec otomeza lst = match lst with
	[] -> []
	| first :: rest ->
		if (seiza first.birthday_month first.birthday_day = "OTOME-ZA") then first.name :: otomeza rest
		else otomeza rest

let test1 = otomeza [p1; p2; p3;] = ["P3"];;
let test2 = otomeza [p2; p3;] = ["P3"];;
let test3 = otomeza [] = [];;

