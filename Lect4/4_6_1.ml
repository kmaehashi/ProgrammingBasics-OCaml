(* 目的: 鶴の数から足の本数を計算する *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi cranes = 2 * cranes

(* 望まれる答え:
	a. 1 羽であれば 2 本
	b. 5 羽であれば 10 本
	c. 0 羽であれば 0 本
*)

(* テスト *)
let test1 = tsuru_no_ashi 1 = 2
let test2 = tsuru_no_ashi 5 = 10
let test3 = tsuru_no_ashi 0 = 0
