#use "D:/Development/OCaml/Lect4/4_6_1.ml"
#use "D:/Development/OCaml/Lect4/4_6_2.ml"

(* 目的: 鶴と亀の数から足の本数を計算する *)
(* tsurukame_no_ashi : int -> int -> int *)
let tsurukame_no_ashi cranes turtles = (tsuru_no_ashi cranes) + (kame_no_ashi turtles)

(* 望まれる答え:
	a. 1 羽と 1 匹であれば 6 本
	b. 2 羽と 4 匹であれば 20 本
	c. 0 羽と 3 匹であれば 12 本
*)

(* テスト *)
let test1 = tsurukame_no_ashi 1 1 = 6
let test2 = tsurukame_no_ashi 2 4 = 20
let test3 = tsurukame_no_ashi 0 3 = 12
