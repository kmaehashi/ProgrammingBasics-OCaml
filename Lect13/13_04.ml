(* 目的: 渡された 2 関数の合成関数を返す *)
(* compose : ('a -> 'b) -> ('c -> 'a) -> 'c -> 'b *)
let compose f g = let h x = f (g x) in h
;;

(* テスト *)
let test =
	(compose
		(let time2 x = x * 2 in time2)
		(let add3 x = x + 3 in add3)
	) 4 = 14
;;
