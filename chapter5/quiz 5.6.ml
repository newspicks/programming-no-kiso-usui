(*目的：a, b, cを与えられたらa*x**+b*x+c=0が虚数解を持つかどうかを判別する*)
(* 判別式 *)
let hanbetsushiki a b c =
  (b ** 2.0) -. (4. *. a *. c)

(* 虚数解を持つか *)
let kyosuukai a b c =
  if hanbetsushiki a b c < 0.0 then "虚数解"
  else "虚数解ではありません"

(* テスト *)
let test1 = kyosuukai 1. 2. 3. = "虚数解"