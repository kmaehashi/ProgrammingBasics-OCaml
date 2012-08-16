(* 目的: 平面座標をふたつ受け取ったら、その中点の座標を返す *)
(* chuten : float * float -> float * float -> float * float *)
let chuten p1 p2 = match p2 with (x2, y2) -> match p1 with (x1, y1) -> ((x1 +. x2) /. 2., (y1 +. y2) /. 2.)

(* テスト *)
let test1 = chuten (5., 3.), (10., 8.)

(*
	let chuten points = match points with ((x1, y1), (x2, y2)) -> ((x1 +. x2) /. 2., (y1 +. y2) /. 2.)
	let test1 = chuten ((5., 3.), (10., 8.))
*)
