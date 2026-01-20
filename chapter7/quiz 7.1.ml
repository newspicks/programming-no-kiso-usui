(*
# let goukei_to_heikin kokugo sugaku eigo rika shakai = "合計は" ^ kokugo + sugaku + eigo + rika + shakai;;
Error: This expression has type int but an expression was expected of type
         string
#  let goukei_to_heikin kokugo sugaku eigo rika shakai =  kokugo + sugaku + eigo + rika + shakai;;
val goukei_to_heikin : int -> int -> int -> int -> int -> int = <fun>
# goukei_to_heikin 1 1 1 1 1;;
- : int = 5
# let goukei_to_heikin kokugo sugaku eigo rika shakai =  kokugo + sugaku + eigo + rika + shakai && (kokugo + sugaku + eigo + rika + shakai)/5
  ;;
Error: This expression has type int but an expression was expected of type
         bool
# let goukei kokugo sugaku eigo rika shakai = kokugo + sugaku + eigo + rika + shakai;;
val goukei : int -> int -> int -> int -> int -> int = <fun>
# let heikin kokugo sugaku eigo rika shakai = (kokugo + sugaku + eigo + rika + shakai)/5;;   
val heikin : int -> int -> int -> int -> int -> int = <fun>
# let goukei_to_heikin kokugo sugaku eigo rika shakai = (goukei,heikin);;
val goukei_to_heikin :
  'a ->
  'b ->
  'c ->
  'd ->
  'e ->
  (int -> int -> int -> int -> int -> int) *
  (int -> int -> int -> int -> int -> int) = <fun>
# goukei_to_heikin 2 2 2 2 2;;
- : (int -> int -> int -> int -> int -> int) *
    (int -> int -> int -> int -> int -> int)
= (<fun>, <fun>)
# goukei, heikin
  ;;
- : (int -> int -> int -> int -> int -> int) *
    (int -> int -> int -> int -> int -> int)
= (<fun>, <fun>)
# let goukei_to_heikin kokugo sugaku eigo rika shakai = (goukei 1 2 3 4 5, heikin 1 2 3 4 5);;
val goukei_to_heikin : 'a -> 'b -> 'c -> 'd -> 'e -> int * int = <fun>
# let 1 2 3 4 5 
  ;;
Error: Syntax error
*)

# let goukei_to_heikin kokugo sugaku eigo rika shakai = (goukei kokugo sugaku eigo rika shakai , heikin  kokugo sugaku eigo rika shakai );;
(*val goukei_to_heikin : int -> int -> int -> int -> int -> int * int = <fun>*)
# goukei_to_heikin 1 2 3 4 5 ;;
(*- : int * int = (15, 3)*)