#use "JAPANESE.ml";;
#use "D:/Development/OCaml/metro.ml";;

(* 目的: 与えられた 2 つの駅間の距離を駅間リストから検索 *)
(* get_ekikan_kyori : string -> string -> ekikan_t list -> float *)
let rec get_ekikan_kyori s1 s2 ekikan_list = match ekikan_list with
	[] -> infinity
	| first :: rest ->
		if ((first.kiten = s1 && first.shuten = s2) || 
			(first.shuten = s1 && first.kiten = s2)) then first.kyori
		else get_ekikan_kyori s1 s2 rest
;;


let test1 = get_ekikan_kyori "二重橋前" "大手町" global_ekikan_list = 0.7;;
