let read_list () =
  let line = input_line stdin in
  let int_list = List.map int_of_string (String.split_on_char ' ' line) in
  Array.of_list int_list
in

let max x y =
  if x > y then x else y
in

let divide x y =
  if x mod y == 0 then x / y else x / y + 1
in

let rec solve x = 
  if x > 0 then begin
    let mas = read_list () in (* length 3 *)
    let average = (mas.(0) + mas.(1)) / 2 in
    let res = divide (max (mas.(0) - average) (mas.(1) - average)) mas.(2) in

    print_int res;
    print_string "\n";

    solve (x - 1)
  end
in

let t = read_int () in
solve t;;


