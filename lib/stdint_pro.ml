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

module Stdint_Pro = struct
  module type Stdint_Sig = sig
    open Stdint
    type t
    val zero : t
    val one : t
    val max_int : t
    val min_int : t
    val bits : int
    val ( + ) : t -> t -> t
    val ( - ) : t -> t -> t
    val ( * ) : t -> t -> t
    val ( / ) : t -> t -> t
    val add : t -> t -> t
    val sub : t -> t -> t
    val mul : t -> t -> t
    val div : t -> t -> t
    val rem : t -> t -> t
    val succ : t -> t
    val pred : t -> t
    val abs : t -> t
    val neg : t -> t
    val logand : t -> t -> t
    val logor : t -> t -> t
    val logxor : t -> t -> t
    val lognot : t -> t
    val shift_left : t -> int -> t
    val shift_right : t -> int -> t
    val shift_right_logical : t -> int -> t
    val of_int : int -> t
    val to_int : t -> int
    val of_float : float -> t
    val to_float : t -> float
    val of_nativeint : nativeint -> t
    val to_nativeint : t -> nativeint
    val of_int8 : int8 -> t
    val to_int8 : t -> int8
    val of_int16 : int16 -> t
    val to_int16 : t -> int16
    val of_int24 : int24 -> t
    val to_int24 : t -> int24
    val of_int32 : int32 -> t
    val to_int32 : t -> int32
    val of_int40 : int40 -> t
    val to_int40 : t -> int40
    val of_int48 : int48 -> t
    val to_int48 : t -> int48
    val of_int56 : int56 -> t
    val to_int56 : t -> int56
    val of_int64 : int64 -> t
    val to_int64 : t -> int64
    val of_int128 : int128 -> t
    val to_int128 : t -> int128
    val of_uint8 : uint8 -> t
    val to_uint8 : t -> uint8
    val of_uint16 : uint16 -> t
    val to_uint16 : t -> uint16
    val of_uint24 : uint24 -> t
    val to_uint24 : t -> uint24
    val of_uint32 : uint32 -> t
    val to_uint32 : t -> uint32
    val of_uint40 : uint40 -> t
    val to_uint40 : t -> uint40
    val of_uint48 : uint48 -> t
    val to_uint48 : t -> uint48
    val of_uint56 : uint56 -> t
    val to_uint56 : t -> uint56
    val of_uint64 : uint64 -> t
    val to_uint64 : t -> uint64
    val of_uint128 : uint128 -> t
    val to_uint128 : t -> uint128
    val of_substring : string -> pos:int -> t * int
    val of_string : string -> t
    val to_string : t -> string
    val to_string_bin : t -> string
    val to_string_oct : t -> string
    val to_string_hex : t -> string
    val printer : Format.formatter -> t -> unit
    val printer_bin : Format.formatter -> t -> unit
    val printer_oct : Format.formatter -> t -> unit
    val printer_hex : Format.formatter -> t -> unit
    val of_bytes_big_endian : Bytes.t -> int -> t
    val of_bytes_little_endian : Bytes.t -> int -> t
    val to_bytes_big_endian : t -> Bytes.t -> int -> unit
    val to_bytes_little_endian : t -> Bytes.t -> int -> unit
    val compare : t -> t -> int
  end

  module Stdint_Pro_Template (Stdint : Stdint_Sig) = struct
    let ( <<< ) : Stdint.t -> Stdint.t -> Stdint.t =
     fun x y -> Stdint.to_int x lsl Stdint.to_int y |> Stdint.of_int
   ;;

    let ( >>> ) : Stdint.t -> Stdint.t -> Stdint.t =
     fun x y -> Stdint.to_int x lsr Stdint.to_int y |> Stdint.of_int
   ;;

    let ( ||| ) : Stdint.t -> Stdint.t -> Stdint.t =
     fun x y -> Stdint.to_int x lor Stdint.to_int y |> Stdint.of_int
   ;;

    let ( &&& ) : Stdint.t -> Stdint.t -> Stdint.t =
     fun x y -> Stdint.to_int x land Stdint.to_int y |> Stdint.of_int
   ;;

    let ( |^| ) : Stdint.t -> Stdint.t -> Stdint.t =
     fun x y -> Stdint.to_int x lxor Stdint.to_int y |> Stdint.of_int
   ;;

    let ( !!! ) : Stdint.t -> Stdint.t =
     fun x -> x |> Stdint.to_int |> lnot |> Stdint.of_int
   ;;

    let ( +<<< ) : int -> Stdint.t -> Stdint.t =
     fun x y -> x lsl Stdint.to_int y |> Stdint.of_int
   ;;

    let ( +>>> ) : int -> Stdint.t -> Stdint.t =
     fun x y -> x lsr Stdint.to_int y |> Stdint.of_int
   ;;

    let ( +||| ) : int -> Stdint.t -> Stdint.t =
     fun x y -> x lor Stdint.to_int y |> Stdint.of_int
   ;;

    let ( +&&& ) : int -> Stdint.t -> Stdint.t =
     fun x y -> x land Stdint.to_int y |> Stdint.of_int
   ;;

    let ( +|^| ) : int -> Stdint.t -> Stdint.t =
     fun x y -> x lxor Stdint.to_int y |> Stdint.of_int
   ;;

    let ( <<<+ ) : Stdint.t -> int -> Stdint.t =
     fun x y -> Stdint.to_int x lsl y |> Stdint.of_int
   ;;

    let ( >>>+ ) : Stdint.t -> int -> Stdint.t =
     fun x y -> Stdint.to_int x lsr y |> Stdint.of_int
   ;;

    let ( |||+ ) : Stdint.t -> int -> Stdint.t =
     fun x y -> Stdint.to_int x lor y |> Stdint.of_int
   ;;

    let ( &&&+ ) : Stdint.t -> int -> Stdint.t =
     fun x y -> Stdint.to_int x land y |> Stdint.of_int
   ;;

    let ( |^|+ ) : Stdint.t -> int -> Stdint.t =
     fun x y -> Stdint.to_int x lxor y |> Stdint.of_int
   ;;
  end

  module Stdint = struct
    include Stdint

    module Uint8 = struct
      include Uint8
      open Stdint_Pro_Template (Uint8)
    end

    module Uint16 = struct
      include Uint16
      open Stdint_Pro_Template (Uint16)
    end

    module Uint32 = struct
      include Uint32
      open Stdint_Pro_Template (Uint32)
    end

    module Uint64 = struct
      include Uint64
      open Stdint_Pro_Template (Uint64)
    end

    module Uint128 = struct
      include Uint128
      open Stdint_Pro_Template (Uint128)
    end

    module Int8 = struct
      include Int8
      open Stdint_Pro_Template (Int8)
    end

    module Int16 = struct
      include Int16
      open Stdint_Pro_Template (Int16)
    end

    module Int32 = struct
      include Int32
      open Stdint_Pro_Template (Int32)
    end

    module Int64 = struct
      include Int64
      open Stdint_Pro_Template (Int64)
    end

    module Int128 = struct
      include Int128
      open Stdint_Pro_Template (Int128)
    end
  end
end