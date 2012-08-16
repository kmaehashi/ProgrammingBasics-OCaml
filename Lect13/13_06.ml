(* eki_t decl *)
#use "D:/Development/OCaml/Lect12/12_01.ml" ;;

(* get_ekikan_kyori *)
#use "D:/Development/OCaml/Lect10/10_11.ml" ;;

(* ��Ū:  p �� q ���Ĥʤ��äƤ����鹹�����Ĥʤ��äƤ��ʤ��ä��� q ���֤� *)
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

(* �ƥ��� *)
let eki1 = {namae="�塹�ھ帶"; saitan_kyori = 0.; temae_list = ["�塹�ھ帶";]}
let eki2 = {namae="�塹�ڸ���"; saitan_kyori = infinity; temae_list = []}
let eki3 = {namae="�塹�ڸ���"; saitan_kyori = 1.0; temae_list = ["�塹�ڸ���"; "�塹�ھ帶";]}
;;

let test1 = koushin1 eki1 eki2 = eki3
;;
