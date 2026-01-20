(*目的：a, b, cを与えられたらa*x**+b*x+c=0の判別式の値を返す*)
let hanbetsushiki a b c = (b ** 2.0) -. (4. *. a *. c)

(*テスト*)
let test1 = hanbetsushiki 1. 1. 1. = -3.
let test1 = hanbetsushiki 1. 2. 3. = -8.
let test1 = hanbetsushiki 3. 4. 5. = -44.
