(* 目的：鶴の数xと亀の数yを与えられたら足の数を返す *)
(* tsuru_kame_no_ashi : int -> int *)
let tsuru_kame_no_ashi x y = x * 2 + y * 4;;

(* テスト *)
let test1 = tsuru_kame_no_ashi 10 10 = 60
let test2 = tsuru_kame_no_ashi 25 25 = 150
let test3 = tsuru_kame_no_ashi 100 100 = 600