#use "JAPANESE.ml";;
#use "D:/Development/OCaml/metro.ml";;

(* 目的: 与えられたローマ字の駅名で与えられた駅名リストを検索し、その駅の漢字表記を返す *)
(* romaji_to_kanji: string -> ekimei_t list -> string *)
let rec romaji_to_kanji romaji ekimei_list = match ekimei_list with
	[] -> ""
	| first :: rest ->
		if first.romaji = romaji then first.kanji
		else romaji_to_kanji romaji rest
;;

let test1 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷";;
let test2 = romaji_to_kanji "shibuya" global_ekimei_list = "渋谷";;
let test3 = romaji_to_kanji "shibuya" [] = "";
let test4 = romaji_to_kanji "none" global_ekimei_list = "";
