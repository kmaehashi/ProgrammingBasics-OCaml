(* ��Ū: Ʊ������ 2 ��Ŭ�Ѥ��� *)
(* twice : ('a -> 'a) -> 'a -> 'a *)
let twice f =
	let g x = f (f x)
	in g
;;

(* ��Ū: Ʊ������ 4 ��Ŭ�Ѥ��� *)
(* twicetwice : ('_a -> '_a) -> '_a -> '_a *)
let twicetwice = twice twice

(* �� *)
let test1 = twicetwice (let add3 x = x + 3 in add3) 100 = 100 + 3 * 4
