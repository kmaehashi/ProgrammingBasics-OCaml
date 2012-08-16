(* 目的: 時間を受け取り、午前か午後かを返す。 *)
(* jikan : int -> string *)
let jikan hour = if hour < 12 then "AM" else "PM"

let test1 = jikan 0 = "AM"
let test2 = jikan 5 = "AM"
let test3 = jikan 11 = "AM"
let test4 = jikan 12 = "PM"
let test5 = jikan 19 = "PM"
let test6 = jikan 23 = "PM"
