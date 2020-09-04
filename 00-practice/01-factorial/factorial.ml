open! Base
(* Some examples while learning Ocaml *)

let rec factorial1 (n : int) : int =
  if n <= 1 then 1
  else n * (factorial1 (n - 1));;

let rec factorial2 (n: int) : int = match n with
  | 0 -> 1
  | n -> n * (factorial2 (n - 1));;

(* This one uses tail recursion *)

let factoptimized n = 
  let rec helper acc n = if n <= 1 then acc else helper (acc * n) (n - 1)
    in helper 1 n;;

(* Writing basic tests using janestreet's test lints *)

let%test "Testing factorial..." =
  Int.equal (factoptimized 5) 120

let%test "Testing factorial..." =
  Int.equal (factorial1 5) 120

let%test "Testing factorial2..." =
  Int.equal (factorial2 5) 120

let%test "Testing factorial..." =
  Int.equal (factoptimized 10) 3628800

let%test "Testing factorial..." =
  Int.equal (factorial1 10) 3628800

let%test "Testing factorial2..." =
  Int.equal (factorial2 10) 3628800

let%test "Testing factorial..." =
  Int.equal (factoptimized 12) 479001600

let%test "Testing factorial..." =
    Int.equal (factorial1 12) 479001600

let%test "Testing factorial2..." =
    Int.equal (factorial2 12) 479001600
