open! Base
(* Some examples while learning Ocaml *)

let rec factorial (n : int) : int =
  if n <= 1 then 1
  else n * (factorial (n - 1));;

let rec factorial2 (n: int) : int = match n with
  | 0 -> 1
  | n -> n * (factorial2 (n - 1));;

(* Writing basic tests using janestreet's test lints *)

let%test "Testing factorial..." =
  Int.equal (factorial 5) 120

let%test "Testing factorial2..." =
  Int.equal (factorial2 5) 120

let%test "Testing factorial..." =
  Int.equal (factorial 10) 3628800

let%test "Testing factorial2..." =
  Int.equal (factorial2 10) 3628800

let%test "Testing factorial..." =
    Int.equal (factorial 12) 479001600

let%test "Testing factorial2..." =
    Int.equal (factorial2 12) 479001600
