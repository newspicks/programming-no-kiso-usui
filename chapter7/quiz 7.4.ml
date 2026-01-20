(*目的：x座標とy座標の組みで表された平面座標を二つ受け取ったら、その中点の座標を返すchuten*)
(* chuten : (int * int) * (int * int) -> int * int *)
let chuten (pair1 , pair2) = match (pair1,pair2) with ((x1, y1) , (x2, y2)) -> (((x1 + x2)/2),((y1 + y2)/2))

(* テスト *)
let test1 = chuten ((0, 0),(0,0)) = (0, 0)
let test2 = chuten ((2, 4),(6,8)) = (4, 6)
let test3 = chuten ((-2, -2), (2,2)) = (0, 0)