(*目的：受け取った時間xが午前か午後かを返す*)
(*jikan : int -> string *)
let jikan x = 
  if x < 12 then "午前"
  else "午後"

let test1 = jikan 12 = "午後"
let test2 = jikan 6 = "午前"
let test3 = jikan 20 = "午後"