(* 目的: 与えられた n の 2 乗の和を返す *)
(* sum_of_square : int -> int *)
let rec sum_of_square n =
	if n = 0 then 0
	else n * n + sum_of_square (n - 1)
;;

(* テスト *)
let test1 = sum_of_square 0 = 0
let test2 = sum_of_square 1 = 1 * 1
let test3 = sum_of_square 2 = 1 * 1 + 2 * 2
let test4 = sum_of_square 3 = 1 * 1 + 2 * 2 + 3 * 3
let test5 = sum_of_square 5 = 1 * 1 + 2 * 2 + 3 * 3 + 4 * 4 + 5 * 5
;;
