(*int listは
  -[] 空リスト、あるいは
  -first::rest 最初の要素がfirstで残りのリストがrest*)
(*目的：整数のリストを受け取ったら、その中の偶数の要素のみを返す*)
(*even: int list -> int lst*)

let rec even lst = match lst with
  [] -> []
  | first :: rest ->  if first = 0 then even rest
                      else if first mod 2 = 0 
                        then first::even rest
                      else even rest

(*テスト*)
let test1 = even[] = []
let test2 = even[1] = []
let test3 = even[1;2;3] = [2]
let test4 = even[0;1;2;3;4;5;6;7;8;9;10] = [2;4;6;8;10]