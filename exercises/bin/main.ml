let () = print_endline "Hello, World!"

(* Exercise 1 Tail of a list*)
let test_array = ["a" ; "b" ; "c" ; "d"];;
(* let rec last (arr :'a list): 'a option = match arr with 
  | [] -> None
  | [x] -> Some x 
  | _ :: tl -> last tl

let result = last test_array;;
match result with 
  | Some x -> assert(x == "d")
  | None ->  print_endline "List is empty!" *)

let rec last_two = function
    | [] | [_] -> None
    | [x; y] -> Some (x,y)
    | _ :: t -> last_two t;;
val last_two : 'a list -> ('a * 'a) option = <fun>

