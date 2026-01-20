(*1*)
let square x = x * x ;;
square 3. ;;
(*型が違うよってなりそう→正解
Error: The constant 3. has type float but an expression was expected of type
         int
*)

(*2*)
let circle = 2. *. pi *. r;;
circle 2.;;
(*rの定義がないよってなりそう→正解
Error: Unbound value r
*)

(*3*)
let TV bangumi youbi = bangumi ^ "は" ^ youbi ^ "に放映です。";;

  TV "ポケモン" "木曜日" ;;

(*変数が大文字始まり！*)