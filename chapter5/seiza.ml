(*星座一覧
1	牡羊座	3月21日〜4月19日
2	牡牛座	4月20日〜5月20日
3	双子座	5月21日〜6月21日
4	蟹座	6月22日〜7月22日
5	獅子座	7月23日〜8月22日
6	乙女座	8月23日〜9月22日
7	天秤座	9月23日〜10月23日
8	蠍座	10月24日〜11月22日
9	射手座	11月23日〜12月21日
10	山羊座	12月22日〜1月20日
11	水瓶座	1月21日〜2月18日
12	魚座	2月19日〜3月20日*)

(*目的：受け取った月monthと日にちdateから星座を返す*)
(*seiza : int -> string *)
let seiza month date = 
  if (month = 3 && date >= 21 && date <= 30) || (month = 4 && date <= 19 && date > 0)
    then "牡羊座"
  else if (month = 4 && date >= 20 && date <= 30) || (month = 5 && date <= 20 && date > 0)
    then "牡牛座"
  else if (month = 5 && date >= 21 && date <= 31) || (month = 6 && date <= 21 && date > 0)
    then "双子座"
  else if (month = 6 && date >= 22 && date <= 30) || (month = 7 && date <= 22 && date > 0)
    then "蟹座"
  else if (month = 7 && date >= 23 && date <= 31) || (month = 8 && date <= 22 && date > 0)
    then "獅子座"
  else if (month = 8 && date >= 23 && date <= 31) || (month = 9 && date <= 22 && date > 0)
    then "乙女座"
  else if (month = 9 && date >= 23 && date <= 30) || (month = 10 && date <= 23 && date > 0)
    then "天秤座"
  else if (month = 10 && date >= 24 && date <= 31) || (month = 11 && date <= 22 && date > 0)
    then "蠍座"
  else if (month = 11 && date >= 23 && date <= 30) || (month = 12 && date <= 21 && date > 0)
    then "射手座"
  else if (month = 12 && date >= 22 && date <= 31) || (month = 1 && date <= 20 && date > 0)
    then "山羊座"
  else if (month = 1 && date >= 21 && date <= 29) || (month = 2 && date <= 18 && date > 0)
    then "水瓶座"
  else if (month = 2 && date >= 19 && date <= 29) || (month = 3 && date <= 20 && date > 0)
    then "魚座"
  else "存在しない日付です"

(*テスト*)
let test1 = seiza 3 22 = "牡羊座"
let test2 = seiza 6 30 = "蟹座"
let test3 = seiza 2 3 = "水瓶座"
let test4 = seiza 5 100 = "存在しない日付です"