(* eki_t decl *)
#use "D:/Development/OCaml/Lect12/12_01.ml" ;;

(* get_ekikan_kyori *)
#use "D:/Development/OCaml/Lect10/10_11.ml" ;;

(* 目的: p と v を受け取り、更新後の未確定駅リストを返す *)
(* koushin : eki_t -> eki_t list -> eki_t list *)
let koushin p v =
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
	in let f q = koushin1 p q in
		List.map f v
;;

(* テスト *)
let eki1 = {namae="代々木上原"; saitan_kyori = 0.; temae_list = ["代々木上原";]}
let eki2 = {namae="代々木公園"; saitan_kyori = infinity; temae_list = []}
let eki3 = {namae="明治神宮前"; saitan_kyori = infinity; temae_list = []}
let eki4 = {namae="代々木公園"; saitan_kyori = 1.0; temae_list = ["代々木公園"; "代々木上原";]}
;;

let test1 = koushin eki1 [eki2; eki3] = [eki4; eki3;]
;;
