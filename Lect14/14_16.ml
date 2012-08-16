let rec enumerate n = 
	if n = 0 then [] else n :: enumerate (n - 1);;

let myfac n = List.fold_right ( * ) (enumerate n) 1 ;;
