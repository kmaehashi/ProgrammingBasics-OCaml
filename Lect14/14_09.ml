#use "D:/Development/OCaml/Lect8/8_3.ml" ;;

let p1 = {name = "P1"; height = 150.; weight = 40.; birthday_month = 1; birthday_day = 16; bloodtype = "A";}
let p2 = {name = "P2"; height = 180.; weight = 55.; birthday_month = 4; birthday_day = 30; bloodtype = "B";}
let p3 = {name = "P3"; height = 175.; weight = 53.; birthday_month = 12; birthday_day = 2; bloodtype = "O";}
;;

(fun p -> match p with
	{name = n; height = h; weight = w; birthday_month = bm; birthday_day = bd; bloodtype = b} -> n)
;;
