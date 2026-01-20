(*問題5.1 次のif文にはどのような型がつくか。つかない場合、どこで型エラーが起きるか。*)
(*(1)*)
if 2 < 1 then 3 else 4;;
(*int=4*)

(*(2)*)
if "true" then 3.14 else 2.72;;
(*error/string型を返さないといけない：不正解*)
(*error/条件式がbool値でなくint型のためerror*)
(*実際のError: This constant has type string but an expression was expected of type
         bool
       because it is in the condition of an if-statement*)

(*(3)*)
if "a" = "b" then false else true;;
(*string=true*)

(*(4)*)
if true < false then 1 else "2";;
(*error/返す型が共通でないといけない。elseの後ろをintにするかthenでstringを返すか*)

(*(5)*)
if not (3 = 4) then  1 < 2 else 1 > 2;;
(*bool=1 < 2*)
(*おしかった：正解はbool=true*)