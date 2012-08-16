(* eki_t decl *)
#use "D:/Development/OCaml/Lect12/12_01.ml" ;;

(* get_ekikan_kyori *)
#use "D:/Development/OCaml/Lect10/10_11.ml" ;;

(* 目的:  p と q がつながっていたら更新、つながっていなかったら q を返す *)
(* koushin1 : eki_t -> eki_t -> eki_t *)
let koushin1 p q = match (p, q) with
	({namae = pn; saitan_kyori = ps; temae_list = pt}, {namae = qn; saitan_kyori = qs; temae_list = qt}) ->
		let ekikan_kyori = get_ekikan_kyori pn qn global_ekikan_list in
			if ekikan_kyori = infinity then
				q
			else
				let kyori_p = ps +. ekikan_kyori in
					if kyori_p < qs then
						{namae = qn; saitan_kyori = kyori_p; temae_list = qn :: pt}
					else
						q
;;

(* テスト *)
let eki1 = {namae="代々木上原"; saitan_kyori = 0.; temae_list = ["代々木上原";]}
let eki2 = {namae="代々木公園"; saitan_kyori = infinity; temae_list = []}
let eki3 = {namae="代々木公園"; saitan_kyori = 1.0; temae_list = ["代々木公園"; "代々木上原";]}
;;

let test1 = koushin1 eki1 eki2 = eki3
;;
