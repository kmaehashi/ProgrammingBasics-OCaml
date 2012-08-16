#use "JAPANESE.ml";;
#use "D:/Development/OCaml/metro.ml";;
#use "D:/Development/OCaml/Lect10/10_11.ml";;

(* 目的: 漢字で与えられた駅名が存在するかどうかを返す *)
(* eki_exists : string -> ekimei_t list -> bool *)
let rec eki_exists station ekimei_list = match ekimei_list with
	[] -> false
	| first :: rest ->
		if (first.kanji = station) then true
		else eki_exists station rest
;;

(* 目的: 与えられた 2 つの駅間の距離を表示 *)
(* kyori_wo_hyouji : string -> stirng -> string *)
let rec kyori_wo_hyouji s1 s2 = 
	let kyori = get_ekikan_kyori s1 s2 global_ekikan_list in
		if (kyori = infinity) then
			if eki_exists s1 global_ekimei_list then
				if eki_exists s2 global_ekimei_list then
					s1 ^ "駅と" ^ s2 ^ "駅はつながっていません。"
				else
					s2 ^ "という駅は存在しません。"
			else
				s1 ^ "という駅は存在しません。"
		else
			s1 ^ "駅から" ^ s2 ^ "駅までは " ^ string_of_float kyori ^ " km です。"
;;

let test1 = kyori_wo_hyouji "二重橋前" "大手町" = "二重橋前駅から大手町駅までは 0.7 km です。"
let test2 = kyori_wo_hyouji "二重橋前" "清澄白河" = "二重橋前駅と清澄白河駅はつながっていません。"
let test3 = kyori_wo_hyouji "二重橋前" "テスト1" = "テスト1という駅は存在しません。"
let test4 = kyori_wo_hyouji "テスト2" "二重橋前" = "テスト2という駅は存在しません。"
;;
