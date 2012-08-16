(* 目的: 誕生日から星座を求める *)
(* seiza : int -> int -> string *)
let seiza m d = 
	     if (m =  1 && 21 <= d && d <= 30) || (m =  2 && 1 <= d && d <= 19) then "MIZUGAME-ZA"
	else if (m =  2 && 20 <= d && d <= 29) || (m =  3 && 1 <= d && d <= 20) then "UO-ZA"
	else if (m =  3 && 21 <= d && d <= 31) || (m =  4 && 1 <= d && d <= 20) then "OHITSUJI-ZA"
	else if (m =  4 && 21 <= d && d <= 30) || (m =  5 && 1 <= d && d <= 21) then "OUSHI-ZA"
	else if (m =  5 && 22 <= d && d <= 31) || (m =  6 && 1 <= d && d <= 21) then "FUTAGO-ZA"
	else if (m =  6 && 22 <= d && d <= 30) || (m =  7 && 1 <= d && d <= 22) then "KANI-ZA"
	else if (m =  7 && 23 <= d && d <= 31) || (m =  8 && 1 <= d && d <= 22) then "SHISHI-ZA"
	else if (m =  8 && 23 <= d && d <= 31) || (m =  9 && 1 <= d && d <= 22) then "OTOME-ZA"
	else if (m =  9 && 23 <= d && d <= 30) || (m = 10 && 1 <= d && d <= 23) then "TENBIN-ZA"
	else if (m = 10 && 24 <= d && d <= 31) || (m = 11 && 1 <= d && d <= 22) then "SASORI-ZA"
	else if (m = 11 && 23 <= d && d <= 30) || (m = 12 && 1 <= d && d <= 22) then "ITE-ZA"
	else if (m = 12 && 23 <= d && d <= 31) || (m =  1 && 1 <= d && d <= 20) then "YAGI-ZA"
	else "INVALID DATE"

(* テスト *)
let test1 = seiza 1 21 = "MIZUGAME-ZA"
let test2 = seiza 2 10 = "MIZUGAME-ZA"
let test3 = seiza 2 20 = "UO-ZA"
let test4 = seiza 10 13 = "TENBIN-ZA"
