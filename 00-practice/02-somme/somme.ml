open! Base
(* Project Euler Problem 1 - https://projecteuler.net/index.php?section=problems&id=1 *)

let rec somme x accum = 
  if x <= 0
    then accum
    else if ((x % 3) = 0) || ((x % 5) = 0)
      then somme (x-1) (accum+x)
      else somme (x-1) accum

let%test "Testing somme..." =
    Int.equal (somme 1000 0) 479001600