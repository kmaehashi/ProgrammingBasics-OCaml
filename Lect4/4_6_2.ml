(* 目的: 亀の数から足の本数を計算する *)
(* kame_no_ashi : int -> int *)
let kame_no_ashi turtles = 4 * turtles

(* 望まれる答え:
	a. 1 匹であれば 4 本
	b. 7 匹であれば 28 本
	c. 0 匹であれば 0 本
*)

(* テスト *)
let test1 = kame_no_ashi 1 = 4
let test2 = kame_no_ashi 7 = 28
let test3 = kame_no_ashi 0 = 0
