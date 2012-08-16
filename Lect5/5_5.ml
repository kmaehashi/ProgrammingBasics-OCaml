(* 目的: 2 次方程式の係数を受け取り判別式の値を返す *)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = (b ** 2.) -. (4. *. a *. c)

(* 目的: 2 次方程式の係数を受け取り解の個数を返す *)
(* kai_no_kosuu : float -> float -> float -> int *)
let kai_no_kosuu a b c = 
	     if (hanbetsushiki a b c) > 0.0 then 2
	else if (hanbetsushiki a b c) = 0.0 then 1
	else 0

(* テスト *)
let test1 = kai_no_kosuu 2.0 3.0 1.0 = 2
let test2 = kai_no_kosuu 1.0 6.0 9.0 = 1
let test3 = kai_no_kosuu 3.0 (-7.0) 12.0 = 0
