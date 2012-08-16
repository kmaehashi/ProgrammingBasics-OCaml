let rec enumerate n = 
	if n = 0 then [] else n :: enumerate (n - 1);;


let one_to_n n = List.fold_right (+) (enumerate n) 0 ;;
