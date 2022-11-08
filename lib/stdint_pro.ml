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

module Stdint_Pro_Template =
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

module Stdint = struct
  include Stdint

  module Uint8 = struct
    include Uint8
    include Stdint_Pro_Template (Uint8)
  end

  module Uint16 = struct
    include Uint16
    include Stdint_Pro_Template (Uint16)
  end
  
  module Uint32 = struct
    include Uint32
    include Stdint_Pro_Template (Uint32)
  end

  module Uint64 = struct
    include Uint64
    include Stdint_Pro_Template (Uint64)
  end

  module Uint128 = struct
    include Uint128
    include Stdint_Pro_Template (Uint128)
  end

  module Int8 = struct
    include Int8
    include Stdint_Pro_Template (Int8)
  end

  module Int16 = struct
    include Int16
    include Stdint_Pro_Template (Int16)
  end
  
  module Int32 = struct
    include Int32
    include Stdint_Pro_Template (Int32)
  end

  module Int64 = struct
    include Int64
    include Stdint_Pro_Template (Int64)
  end

  module Int128 = struct
    include Int128
    include Stdint_Pro_Template (Int128)
  end
end