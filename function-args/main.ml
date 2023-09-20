let read_integer_list () =
  let line = input_line stdin in
  let int_list = List.map int_of_string (String.split_on_char ' ' line) in
  Array.of_list int_list
in

let rec sum arr func i =
  if i < (Array.length arr) - 1 then
    (func arr.(i)) + sum arr func (i + 1)
  else
    func arr.(i)
in

let f x =
  x * x
in

let mas = read_integer_list () in
print_int (sum mas f 0);;

