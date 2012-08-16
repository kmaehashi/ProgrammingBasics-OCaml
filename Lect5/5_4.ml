(* 目的: 2 次方程式の係数を受け取り判別式の値を返す *)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = (b ** 2.) -. (4. *. a *. c)

(* テスト *)
let test1 = hanbetsushiki 2.0 3.0 1.0 = 1.0
let test2 = hanbetsushiki 1.0 6.0 9.0 = 0.0
let test3 = hanbetsushiki 3.0 (-7.0) 12.0 = -95.0
