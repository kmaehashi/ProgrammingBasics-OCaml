(* 目的: 渡されたリストの中で偶数のもののリストを返します *)
(* count_ketsueki : person_t list -> string -> int *)
let even lst = List.filter (fun n -> n mod 2 = 0) lst
;;
	
(* テスト *)
;;
