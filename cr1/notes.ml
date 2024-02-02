(* let keyword: assings (or binds) a variable name to the value of an expression *)

(*
  function: maps an input to an output
  ex1: 
    fun x -> fun y -> x + y
    high level: this adds two ints
    lower level: takes int value x and returns a function that takes in another int value y and adds x to y
  
  functional programming: treat functions as values (can call functions in functions, and functions have types)

  -> : function type constructor, used to define the type of a function
  
  ex1: 
    int -> (int -> int) = int -> int -> int
  
  ex2: 
    (fun x -> fun y -> x < y) 5 2 ;; (returns false)
    is syntactic sugar for : ((fun x -> fun y -> x < y) 5) 2 ;;

  ex3: 
    let add = fun x -> fun y -> x + y ;;
    syntactic sugar: 
      let add x y = x + y ;;
    include types for style:
      let add: int -> int -> int = fun x -> fun y -> x + y ;;
      syntactic sugar:
      let add (x: int) (y: int) : int = 
          x + y ;;
*)

(*
  Pattern matching: this is a way to deconstruct types

  ex1: 
      let rec factorial (n : int) : int =  
        match n with
        | 0 -> 1
        | _ -> n * factorial (n - 1) ;;
      
      no need to match on atomic types so don't need to use pattern matching here
      let rec factorial (n : int) : int = 
        if n = 0 then 1
        else n * factorial (n - 1) ;;
  
  ex2: length of the list
    let rec length (lst: int list) : int = 
      match lst with
      | [] -> 0
      | _ :: t -> 1 + length t ;;

  ex3: assigning name to function
    let add_term : float -> float = fun -> let term = 7.3 in x +. term
    let add_term (x: float) = 
      let term = 7.3 in x +. term  

  Thinking recursively: 
      1) define base cases -> inputs that you can solve directly
      2) recursive case -> make recursive calls to your function
        - assume that rec calls on smaller cases are correct
      
      Exhuastive Cases from example:
      1) Don't include first element in the subset -> subset_sum t target
      2) Include the head element in the subset -> subset_sum t (target - h)
*)