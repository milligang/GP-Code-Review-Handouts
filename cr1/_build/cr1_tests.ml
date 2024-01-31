
open Cr1 ;; 

open CS51Utils.Absbook ;;



(* Write unit tests here! *)

let fib_tests () = 
  unit_test (fib 1 = 1) "fib 1"; 
  unit_test (fib 2 = 1) "fib 1" ;; 

fib_tests() ;; 
