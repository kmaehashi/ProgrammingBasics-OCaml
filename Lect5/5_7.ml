(* 目的: 身長(m) と体重(kg) から BMI 値を算出する *)
(* bmi : float -> float -> float *)
let bmi height weight = weight /. (height ** 2.0)

(* 目的: 身長(m) と体重(kg) から導かれる BMI 値に基いて体系を判定する *)
(* taikei : float -> float -> string *)
let taikei height weight = 
	     if (bmi height weight) < 18.5 then "やせ"
	else if (bmi height weight) < 25.0 then "標準"
	else if (bmi height weight) < 30.0 then "肥満"
	else "高度肥満"

(* テスト *)
let test1 = taikei 1.73 54.0 = "やせ"
let test2 = taikei 1.73 80.0 = "肥満"
let test2 = taikei 1.73 100.0 = "高度肥満"
