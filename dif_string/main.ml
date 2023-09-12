let rec dist x y index = 
  if index < String.length x then begin
    if (String.get x index) != (String.get y index) then
      1 + dist x y (index + 1)
    else
      dist x y (index + 1)
  end else begin
    0
  end
in

let n = read_int () in
let s1 = read_line () in (* length n *)
let s2 = read_line () in (* length n *)
print_int (dist s1 s2 0);;

