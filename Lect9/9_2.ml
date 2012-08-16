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
let p3 = {name = "P3"; height = 175.; weight = 53.; birthday_month = 12; birthday_day = 2; bloodtype = "O";}

[p1; p2; p3;];;
