let rec pow (x: float) (y: float) =
  if y > 0.0 then
    x *. pow x (y -. 1.0)
  else
    1.0
in

let f (x : float) =
  (pow x 3.0) -. 8.0 *. (pow x 2.0)
in

let fp x =
  3.0 *. (pow x 2.0) -. 16.0 *. x
in

let rec newtons n x max_n =
  if x >= max_n then
    n
  else
    newtons (n -. (f n) /. (fp n)) (x +. 1.0) max_n
in

print_float (newtons (-4.0) 0.0 100.0);;

