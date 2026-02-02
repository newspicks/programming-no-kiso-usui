(*int listは
  -[] 空リスト、あるいは
  -first::rest 最初の要素がfirstで残りのリストがrest*)
(*目的：文字列のリストを受け取ったら、その中の要素を前から順に全部くっつけた文字列を返す*)
(*concat: int list -> string*)

let rec concat lst = match lst with
  [] -> ""
  | first :: rest ->  first^concat rest 

(*テスト*)
let test1 = concat[] = ""
let test2 = concat["春";"夏";"秋";"冬";] = "春夏秋冬"
let test3 = concat["NewsPicks";" from ";"Uzabase";] = "NewsPicks from Uzabase"