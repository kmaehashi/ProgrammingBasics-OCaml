(* 目的: リストを与えられたら、偶数の要素のみを含むリストを返す *)
(* concat : int list -> int list *)
let rec even lst = match lst with
	[] -> []
	| first :: rest -> 
		if (first mod 2 = 0) then first :: even rest
		else even rest;;

(* テスト *)
let test1 = even [1; 2; 3; 4; 5; 10;] = [2; 4; 10;];;
let test2 = even [] = "";;
