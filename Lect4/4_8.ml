(* 目的: 鶴亀算 - 鶴と亀の合計数と足の合計数から鶴の数を求める *)
(* tsurukame : int -> int -> int *)
let tsurukame cranes_and_turtles total_legs = cranes_and_turtles - ((total_legs - (2 * cranes_and_turtles)) / (4 - 2))

(* 望まれる答え:
	a. 10 匹と 26 本であれば鶴は 7 羽
	b. 8 匹と 20 本であれば鶴は 6 羽
	c. 0 匹と 0 本であれば鶴は 0 羽
*)

(* テスト *)
let test1 = tsurukame 10 26 = 7
let test2 = tsurukame 8 20 = 6
let test3 = tsurukame 0 0 = 0
