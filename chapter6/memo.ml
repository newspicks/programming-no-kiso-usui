
(*6.1 構文エラー：syntax error*)

let x 3;; (* =の書き忘れ *)
if 2 > 3 then else 3 ;; (* thenの後ろを書き忘れ　*)
3+4)*2;;  (* (の書き忘れ *)
(3+4*2;;  (* This ( might be unmatchedで指摘してくれる *)

(*6.2 未定義の変数：Unbound Error*)
# 2+a*4;;

# lat x = 3;;
(*Error: Unbound value lat　→　letじゃなくてlatという変数だと思われている*)

# A;;
(*Error: Unbound constructor　→ 変数は小文字で始めてなくてはいけないのに、大文字を使っている場合のエラー*)

(*6.3 型エラー：The constant 2.5 has type float but an expression was expected of type int*)
# 2 + 2.5;; (*本当は整数を使わないといけない*)

# 1.0 + 2.0 ;; (* 1.0が間違っていると認識される例。計算系の式が優先されるぽい*)

# sin 3.14 0.;;
(*Error: The function sin has type float -> float
       It is applied to too many arguments
Line 1, characters 9-11:
  This extra argument is not expected.
  引数がめっちゃ多いよ！って言われている*)

# if 2 > 3 then sin 3.14 cos 0.0;;

(*6.4 実行時のエラー：Exception: Division_by_zero.など。厳密にはエラーではないらしい。*)
# 3 / 0 ;;

(*6.5 論理的なエラー：*)
# let menseki r = 2. *. pi *. r;;
(*Error: Unbound value pi。piを定義していないからそのエラーになっちゃった。*)

# let pi = 3.14;;
val pi : float = 3.14
#  let menseki r = 2. *. pi *. r;;
val menseki : float -> float = <fun>