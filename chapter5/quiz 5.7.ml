(*目的：身長mと体重kgを与えられたらbmi指数を計算し、体型を返す関数taikei*)
(*bmi指数が、18.5以下なら痩せ、18.5以上25未満なら標準、25以上30未満なら肥満、30以上なら高度肥満*)
(*bmi指数の計算方法：体重(kg) ÷ (身長(m) × 身長(m))*)
let bmi m kg = kg /. (m ** 2.)

let taikei m kg =
  if bmi m kg  <= 18.5 then "痩せ"
  else if (bmi m kg  >= 18.5) && (bmi m kg < 25.) then "標準"
    else if (bmi m kg >= 25.) && (bmi m kg < 30.) then "肥満"
    else "高度肥満"

(*テスト*)
let test1 = taikei 1.5 30. = "痩せ"
let test2 = taikei 1.4 44. = "標準"
let test3 = taikei 1.8 120. = "高度肥満"