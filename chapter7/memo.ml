match (3, 5) with (a, b) -> a+b;;

let add pair = match pair with (a,b) -> a+ b;;
add(3,5);;

let add (a,b) = a+ b;;

let f pair = match pair with (a,a) -> a +a;;
(*Error: Variable a is bound several times in this matching*)

let add2 a b = a + b;;
add2 3 5;;