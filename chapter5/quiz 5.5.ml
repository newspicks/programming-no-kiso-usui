(*目的：a, b, cを与えられたらa*x**+b*x+c=0の解の個数を返す*)
let hanbetsushiki a b c = (b ** 2.0) -. (4. *. a *. c)

let kai_no_kosu a b c =
  if hanbetsushiki a b c > 0.0 then 2.
else if hanbetsushiki a b c = 0.0 then 1.
else 0.0

(*テスト*)
let test1 = kai_no_kosu 1. 2. 3. = 0.