(* koushin1 *)
#use "D:/Development/OCaml/Lect13/13_06.ml"
;;

(* ��Ū: p �� v �������ꡢ�������̤����إꥹ�Ȥ��֤� *)
(* koushin : eki_t -> eki_t list -> eki_t list *)
let koushin p v =
	let f q = koushin1 p q in
		List.map f v
;;

(* �ƥ��� *)
let eki1 = {namae="�塹�ھ帶"; saitan_kyori = 0.; temae_list = ["�塹�ھ帶";]}
let eki2 = {namae="�塹�ڸ���"; saitan_kyori = infinity; temae_list = []}
let eki3 = {namae="����������"; saitan_kyori = infinity; temae_list = []}
let eki4 = {namae="�塹�ڸ���"; saitan_kyori = 1.0; temae_list = ["�塹�ڸ���"; "�塹�ھ帶";]}
;;

let test1 = koushin eki1 [eki2; eki3] = [eki4; eki3;]
;;
