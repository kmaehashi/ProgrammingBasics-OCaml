(* 12.2 *)
let rec make_eki_list ekimei_list = match ekimei_list with
    [] -> []
  | {kanji = k; kana = a; romaji = r; shozoku = s} :: rest ->
      {namae = k; saitan_kyori = infinity; temae_list = []}
      :: make_eki_list rest

(* 12.3 オリジナル版 *)
let rec shokika eki_list kiten = match eki_list with
    [] -> []
  | ({namae = k; saitan_kyori = s; temae_list = t} as first) :: rest ->
      if k = kiten
      then {namae = k; saitan_kyori = 0.; temae_list = [k]}
	   :: shokika rest kiten
      else first :: shokika rest kiten

let make_eki_list_2 = 
