let read_integer_list () =
  let line = input_line stdin in
  let int_list = List.map int_of_string (String.split_on_char ' ' line) in
  Array.of_list int_list
in

let rec get_sum mas index =
  if index + 1 < Array.length mas then begin
    (get_sum mas (index + 1)) + mas.(index)
  end else begin
    mas.(index)
  end
in

let n = read_int () in
let mas = read_integer_list () in
let sum = get_sum mas 0 in
print_int sum;;


