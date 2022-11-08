(*******************************************************************************
 * Copyright (c) 2022 Muqiu Han
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
 * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
 * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE
 * OR OTHER DEALINGS IN THE SOFTWARE. 
 *******************************************************************************)

module Operator_Template =
functor
  (Stdint_Modules : Stdint.Int)
  ->
  struct
    let ( <<< ) : Stdint_Modules.t -> Stdint_Modules.t -> Stdint_Modules.t =
     fun x y ->
      Stdint_Modules.to_int x lsl Stdint_Modules.to_int y |> Stdint_Modules.of_int
   ;;

    let ( >>> ) : Stdint_Modules.t -> Stdint_Modules.t -> Stdint_Modules.t =
     fun x y ->
      Stdint_Modules.to_int x lsr Stdint_Modules.to_int y |> Stdint_Modules.of_int
   ;;

    let ( ||| ) : Stdint_Modules.t -> Stdint_Modules.t -> Stdint_Modules.t =
     fun x y ->
      Stdint_Modules.to_int x lor Stdint_Modules.to_int y |> Stdint_Modules.of_int
   ;;

    let ( &&& ) : Stdint_Modules.t -> Stdint_Modules.t -> Stdint_Modules.t =
     fun x y ->
      Stdint_Modules.to_int x land Stdint_Modules.to_int y |> Stdint_Modules.of_int
   ;;

    let ( |^| ) : Stdint_Modules.t -> Stdint_Modules.t -> Stdint_Modules.t =
     fun x y ->
      Stdint_Modules.to_int x lxor Stdint_Modules.to_int y |> Stdint_Modules.of_int
   ;;

    let ( !!! ) : Stdint_Modules.t -> Stdint_Modules.t =
     fun x -> x |> Stdint_Modules.to_int |> lnot |> Stdint_Modules.of_int
   ;;

    let ( +<<< ) : int -> Stdint_Modules.t -> Stdint_Modules.t =
     fun x y -> x lsl Stdint_Modules.to_int y |> Stdint_Modules.of_int
   ;;

    let ( +>>> ) : int -> Stdint_Modules.t -> Stdint_Modules.t =
     fun x y -> x lsr Stdint_Modules.to_int y |> Stdint_Modules.of_int
   ;;

    let ( +||| ) : int -> Stdint_Modules.t -> Stdint_Modules.t =
     fun x y -> x lor Stdint_Modules.to_int y |> Stdint_Modules.of_int
   ;;

    let ( +&&& ) : int -> Stdint_Modules.t -> Stdint_Modules.t =
     fun x y -> x land Stdint_Modules.to_int y |> Stdint_Modules.of_int
   ;;

    let ( +|^| ) : int -> Stdint_Modules.t -> Stdint_Modules.t =
     fun x y -> x lxor Stdint_Modules.to_int y |> Stdint_Modules.of_int
   ;;

    let ( <<<+ ) : Stdint_Modules.t -> int -> Stdint_Modules.t =
     fun x y -> Stdint_Modules.to_int x lsl y |> Stdint_Modules.of_int
   ;;

    let ( >>>+ ) : Stdint_Modules.t -> int -> Stdint_Modules.t =
     fun x y -> Stdint_Modules.to_int x lsr y |> Stdint_Modules.of_int
   ;;

    let ( |||+ ) : Stdint_Modules.t -> int -> Stdint_Modules.t =
     fun x y -> Stdint_Modules.to_int x lor y |> Stdint_Modules.of_int
   ;;

    let ( &&&+ ) : Stdint_Modules.t -> int -> Stdint_Modules.t =
     fun x y -> Stdint_Modules.to_int x land y |> Stdint_Modules.of_int
   ;;

    let ( |^|+ ) : Stdint_Modules.t -> int -> Stdint_Modules.t =
     fun x y -> Stdint_Modules.to_int x lxor y |> Stdint_Modules.of_int
   ;;
  end