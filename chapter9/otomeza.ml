(*人の情報(名前、身長、体重、誕生日、血液型)を表す型*)
type person_t = {
  namae :string;
  cm : int;
  kg : int;
  birthMonth : int;
  birthDate : int;
  bloodType : string;
};;

(*person_t listは、
 -[] 空リスト、あるいは
 - first::rest 最初の要素がfirstで残りのリストがrest(firstはperson_t型、restが自己参照のケース)
 *)
let lst1 = []
let lst2 = 
  [{namae = "太郎"; cm = 154;kg = 65;birthMonth = 4;birthDate = 10;bloodType = "A";}]
let lst3 = 
  [
    {namae = "太郎"; cm = 154;kg = 65;birthMonth = 4;birthDate = 10;bloodType = "A";};
    {namae = "花子"; cm = 142;kg = 50;birthMonth = 9;birthDate = 4;bloodType = "O";}
  ]
let lst4 = 
  [
    {namae = "太郎"; cm = 154;kg = 65;birthMonth = 4;birthDate = 10;bloodType = "A";};
    {namae = "花子"; cm = 142;kg = 50;birthMonth = 8;birthDate = 31;bloodType = "O";};
    {namae = "二郎"; cm = 180;kg = 50;birthMonth = 9;birthDate = 4;bloodType = "A";}
  ]

(*目的：人の情報のリストlstのうち乙女座の人の数を返す*)
(*otomeza: person_t list -> int*)

let rec otomeza lst = match lst with
  [] -> 0
  |{namae=n;cm=c;kg=k;birthMonth=bM;birthDate=bD;bloodType=bT}::rest 
  -> if (bM = 8 && bD >= 23 && bD <= 31)||(bM = 9 && bD <= 22 && bD >= 1) then 1 + otomeza rest
  else otomeza rest (*count_ketsueki_A rest*)
(*テスト*)
let test1 = otomeza lst1 = 0
let test2 = otomeza lst2 = 0
let test3 = otomeza lst3 = 1
let test4 = otomeza lst4 = 2