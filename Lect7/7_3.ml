(* 目的: 名前と成績の組を受け取ったらメッセージを返します *)
(* seiseki : string * string -> string *)
let seiseki pair = match pair with (name, score) -> name ^ "'s score is " ^ score ^ "."

(* テスト *)
let test1 = seiseki ("John", "100") = "John's score is 100."
let test2 = seiseki ("Jane", "80") = "Jane's score is 80."
