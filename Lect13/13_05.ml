(* 目的: 同じ操作を 2 回適用する *)
(* twice : ('a -> 'a) -> 'a -> 'a *)
let twice f =
	let g x = f (f x)
	in g
;;

(* 目的: 同じ操作を 4 回適用する *)
(* twicetwice : ('_a -> '_a) -> '_a -> '_a *)
let twicetwice = twice twice

(* 例 *)
let test1 = twicetwice (let add3 x = x + 3 in add3) 100 = 100 + 3 * 4
