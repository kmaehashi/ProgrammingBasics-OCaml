#use "D:/Development/OCaml/Lect8/8_3.ml"
;;

(* 目的: 与えられた人の名前を返す *) 
(* get_name_of : person_t -> string *)
let get_name_of person = match person with
	{name = n; height = h; weight = w; birthday_month = bm; birthday_day = bd; bloodtype = bt;} -> n
;;

(* 目的：与えられた人リストから名前リストを返す *)
(* person_namae : person_t list -> string list *)
let person_namae person_list = List.map get_name_of person_list

(* テストデータ *)
let p1 = {name = "P1"; height = 150.; weight = 40.; birthday_month = 1; birthday_day = 16; bloodtype = "A";}
let p2 = {name = "P2"; height = 180.; weight = 55.; birthday_month = 4; birthday_day = 30; bloodtype = "B";}
let p3 = {name = "P3"; height = 175.; weight = 53.; birthday_month = 12; birthday_day = 2; bloodtype = "O";}
;;

let person_list = [p1; p2; p3]
;;
 
(* テスト *) 
let test1 = person_namae [] = []
let test2 = person_namae person_list = ["P1"; "P2"; "P3"] 
;;
