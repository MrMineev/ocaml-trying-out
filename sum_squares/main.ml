(*
let sum = 0;
for i in 0..=n {
  for j in 0..=i {
    sum += i * j;
  }
}
*)

let rec sum_2 x t =
  if t > 0 then
    t * x + sum_2 x (t - 1)
  else
    t * x
in

let rec sum_1 t =
  if t > 0 then
    (sum_2 t t) + (sum_1 (t - 1))
  else
    (sum_2 t t)
in

print_int (sum_1 (read_int ()));;

