(* 目的: 整数のリストの長さを返す *)
(* length : int list -> int *)
let rec length lst = match lst with
	[] -> 0
	| first :: rest -> 1 + length rest;;

(* テスト *)
let test1 = length [1; 2; 3; 4;] = 4;;
let test2 = length [51; 13; 120;] = 3;;
let test3 = length [] = 0;;
