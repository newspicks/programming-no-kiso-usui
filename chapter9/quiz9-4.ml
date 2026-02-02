(*int listは
  -[] 空リスト、あるいは
  -first::rest 最初の要素がfirstで残りのリストがrest*)
(*目的：整数のリストを受け取ったら、そのリストの長さを返す関数length*)
(*length: int list -> int*)
let rec length lst = match lst with
  [] -> 0 
  | first :: rest ->  1 + length rest


(*テスト*)
let test1 = length[] = 0
let test2 = length[1] = 1
let test3 = length[1;2;3] = 3
let test4 = length[0;1;2;3;4;5;6;7;8;9;10] = 11