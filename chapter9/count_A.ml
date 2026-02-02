(*学生日取る分のデータ（名前、点数、成績）を表す型*)
type gakusei_t = {
  namae: string;
  tensuu: int;
  seiseki: string;
}

(*gakusei_t lstは、
  -[] 空リスト、あるいは
  -first::rest 最初の要素がfirstで残りがrest
  (firstはgakusei_t型、restが自己参照のケース)
  という形*)

(*gakusei_t list型のデータの例*)
let lst1 = []
let lst2 = [{namae = "asai"; tensuu = 70; seiseki = "B"}]
let lst3 = [{namae = "asai"; tensuu = 70; seiseki = "B"};{namae = "kaneko"; tensuu = 85; seiseki = "A"}]
let lst4 = [{namae = "asai"; tensuu = 70; seiseki = "B"};{namae = "kaneko"; tensuu = 85; seiseki = "A"};{namae = "yoshida"; tensuu = 90; seiseki = "A"}]

(*目的：学生リストlstのうち成績がAの人数を返す*)
(*count_A: gakusei_t list -> int*)
(*let count_A lst = match lst with
  [] -> 0
  |first::rest -> (match first with {namae = n; tensuu =t; seiseki =s}as first::rest->0) (*countA rest*)*)
let rec count_A lst = match lst with 
  []->0
  |{namae = n; tensuu = t; seiseki = s}::rest
   -> if s = "A" then 1+count_A rest
   else count_A rest

let test1 = count_A lst1 = 0
let test2 = count_A lst2 = 0
let test3 = count_A lst3 = 1
let test4 = count_A lst4 = 2

