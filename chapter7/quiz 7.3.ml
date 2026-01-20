(*目的：x座標とy座標の組みで表された平面座標を受け取ったら、x軸について対称な点を返す関数taisho_x*)
(* taisho_x : int * int -> int * int *)
let taisho_x pair = match pair with (a, b) -> ( a , ((-1)*b))

(* テスト *)
let test1 = taisho_x (0, -2) = (0, 2)
let test2 = taisho_x (3, 5) = (3, -5)
let test3 = taisho_x (3, -5) = (3, 5)
