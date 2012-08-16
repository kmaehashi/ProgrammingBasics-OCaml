(* 目的: 5 教科の成績を受け取り合計を返す *)
(* goukei : int -> int -> int -> int -> int -> int *)
let goukei s1 s2 s3 s4 s5 = s1 + s2 + s3 + s4 + s5

(* 目的: 5 教科の成績を受け取り平均を返す *)
(* heikin : int -> int -> int -> int -> int -> int *)
let heikin s1 s2 s3 s4 s5 = (goukei s1 s2 s3 s4 s5) / 5

(* 目的: 5 教科の成績を受け取り合計と平均の組を返す *)
(* goukei_to_heikin : int -> int -> int -> int -> int -> int *)
let goukei_to_heikin s1 s2 s3 s4 s5 = ((goukei s1 s2 s3 s4 s5), (heikin s1 s2 s3 s4 s5))

(* テスト *)
let test1 = goukei_to_heikin 100 50 100 100 50 = (400, 80)
let test2= goukei_to_heikin 50 0 50 0 0 = (100, 20)
