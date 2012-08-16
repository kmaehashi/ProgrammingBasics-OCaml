(* 目的: lst の中から n より小さい要素のみを取り出す *)
(* take_less : int -> int list => int list *)
let take_less n lst = [] (* not implemented yet *)
;;

(* 目的: lst の中から n より大きい要素のみを取り出す *)
(* take_greater : int -> int list => int list *)
let take_greater n lst = [] (* not implemented yet *)
;;

(* 目的: 受け取った lst をクイックソートを使って昇順に整列する *)
(* quick_sort : int list -> int list *)
let rec quick_sort lst = match lst with
	  [] -> [] (* 自明なケース *)
	| first :: rest -> [] (* それ以外 *)
			      (* quick_sort (take_less first rest) *)
			      (* quick_sort (take_greater first rest) *)
;;

(* テスト *)
let test1 = quick_sort [] = []
let test2 = quick_sort [1] = [1]
let test3 = quick_sort [1; 2] = [1; 2]
let test4 = quick_sort [2; 1] = [1; 2]
let test5 = quick_sort [5; 4; 9; 8; 2; 3] = [2; 3; 4; 5; 8; 9]
;;
