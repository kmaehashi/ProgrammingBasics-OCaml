(* 目的: 文字列のリストを連結する *)
(* concat : string list -> string *)
let rec concat lst = match lst with
	[] -> ""
	| first :: rest -> first ^ concat rest;;

(* テスト *)
let test1 = concat ["H"; "N"; "A"; "F"] = "HNAF";;
let test2 = concat [] = "";;
