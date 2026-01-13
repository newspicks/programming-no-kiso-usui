(* 目的：鶴と亀の数の合計xと足の数の合計yを与えられたら、鶴の数を返す *)
(* tsurukame : int -> int *)
let tsurukame x y = (4*x-y)/2
let test1 =  tsurukame 6 20 = 2
let test2 = tsurukame 15 40 = 10