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

module Test_Ext = struct
  open Stdint_pro.Ext

  module Test_Operator = struct
    open Operator

    module Test_Int8 = struct
      let test_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Int8.(of_int 1 <<< of_int 1 |> to_int)) ())
     ;;

      let test_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int8.(of_int 1 >>> of_int 1 |> to_int)) ())
     ;;

      let test_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int8.(of_int 1 ||| of_int 1 |> to_int)) ())
     ;;

      let test_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int8.(of_int 1 &&& of_int 1 |> to_int)) ())
     ;;

      let test_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int8.(of_int 1 |^| of_int 1 |> to_int)) ())
     ;;

      let test_not : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          (-2)
          ((fun () -> Int8.(1 |> of_int |> ( !!! ) |> to_int)) ())
     ;;

      let test_int_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Int8.(1 +<<< of_int 1 |> to_int)) ())
     ;;

      let test_int_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int8.(1 +>>> of_int 1 |> to_int)) ())
     ;;

      let test_int_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int8.(1 +||| of_int 1 |> to_int)) ())
     ;;

      let test_int_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int8.(1 +&&& of_int 1 |> to_int)) ())
     ;;

      let test_int_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int8.(1 +|^| of_int 1 |> to_int)) ())
     ;;

      let test_shift_left_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Int8.(of_int 1 <<<+ 1 |> to_int)) ())
     ;;

      let test_shift_right_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int8.(of_int 1 >>>+ 1 |> to_int)) ())
     ;;

      let test_or_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int8.(of_int 1 |||+ 1 |> to_int)) ())
     ;;

      let test_and_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int8.(of_int 1 &&&+ 1 |> to_int)) ())
     ;;

      let test_xor_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int8.(of_int 1 |^|+ 1 |> to_int)) ())
     ;;

      let test_list =
        Alcotest.
          [ test_case "<<<" `Quick test_shift_left
          ; test_case "+<<<" `Quick test_int_shift_left
          ; test_case "<<<+" `Quick test_shift_left_int
          ; test_case ">>>" `Quick test_shift_right
          ; test_case ">>>+" `Quick test_shift_right_int
          ; test_case "+>>>" `Quick test_int_shift_right
          ; test_case "|||" `Quick test_or
          ; test_case "&&&" `Quick test_and
          ; test_case "|^|" `Quick test_xor
          ; test_case "+|^|" `Quick test_int_xor
          ; test_case "|^|+" `Quick test_xor_int
          ; test_case "+|||" `Quick test_int_or
          ; test_case "|||+" `Quick test_or_int
          ; test_case "+&&&" `Quick test_int_and
          ; test_case "&&&+" `Quick test_and_int
          ; test_case "!!!" `Quick test_not
          ]
      ;;
    end

    module Test_Int16 = struct
      let test_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Int16.(of_int 1 <<< of_int 1 |> to_int)) ())
     ;;

      let test_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int16.(of_int 1 >>> of_int 1 |> to_int)) ())
     ;;

      let test_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int16.(of_int 1 ||| of_int 1 |> to_int)) ())
     ;;

      let test_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int16.(of_int 1 &&& of_int 1 |> to_int)) ())
     ;;

      let test_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int16.(of_int 1 |^| of_int 1 |> to_int)) ())
     ;;

      let test_not : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          (-2)
          ((fun () -> Int16.(1 |> of_int |> ( !!! ) |> to_int)) ())
     ;;

      let test_int_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Int16.(1 +<<< of_int 1 |> to_int)) ())
     ;;

      let test_int_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int16.(1 +>>> of_int 1 |> to_int)) ())
     ;;

      let test_int_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int16.(1 +||| of_int 1 |> to_int)) ())
     ;;

      let test_int_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int16.(1 +&&& of_int 1 |> to_int)) ())
     ;;

      let test_int_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int16.(1 +|^| of_int 1 |> to_int)) ())
     ;;

      let test_shift_left_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Int16.(of_int 1 <<<+ 1 |> to_int)) ())
     ;;

      let test_shift_right_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int16.(of_int 1 >>>+ 1 |> to_int)) ())
     ;;

      let test_or_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int16.(of_int 1 |||+ 1 |> to_int)) ())
     ;;

      let test_and_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int16.(of_int 1 &&&+ 1 |> to_int)) ())
     ;;

      let test_xor_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int16.(of_int 1 |^|+ 1 |> to_int)) ())
     ;;

      let test_list =
        Alcotest.
          [ test_case "<<<" `Quick test_shift_left
          ; test_case "+<<<" `Quick test_int_shift_left
          ; test_case "<<<+" `Quick test_shift_left_int
          ; test_case ">>>" `Quick test_shift_right
          ; test_case ">>>+" `Quick test_shift_right_int
          ; test_case "+>>>" `Quick test_int_shift_right
          ; test_case "|||" `Quick test_or
          ; test_case "&&&" `Quick test_and
          ; test_case "|^|" `Quick test_xor
          ; test_case "+|^|" `Quick test_int_xor
          ; test_case "|^|+" `Quick test_xor_int
          ; test_case "+|||" `Quick test_int_or
          ; test_case "|||+" `Quick test_or_int
          ; test_case "+&&&" `Quick test_int_and
          ; test_case "&&&+" `Quick test_and_int
          ; test_case "!!!" `Quick test_not
          ]
      ;;
    end

    module Test_Int32 = struct
      let test_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Int32.(of_int 1 <<< of_int 1 |> to_int)) ())
     ;;

      let test_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int32.(of_int 1 >>> of_int 1 |> to_int)) ())
     ;;

      let test_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int32.(of_int 1 ||| of_int 1 |> to_int)) ())
     ;;

      let test_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int32.(of_int 1 &&& of_int 1 |> to_int)) ())
     ;;

      let test_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int32.(of_int 1 |^| of_int 1 |> to_int)) ())
     ;;

      let test_not : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          (-2)
          ((fun () -> Int32.(1 |> of_int |> ( !!! ) |> to_int)) ())
     ;;

      let test_int_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Int32.(1 +<<< of_int 1 |> to_int)) ())
     ;;

      let test_int_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int32.(1 +>>> of_int 1 |> to_int)) ())
     ;;

      let test_int_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int32.(1 +||| of_int 1 |> to_int)) ())
     ;;

      let test_int_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int32.(1 +&&& of_int 1 |> to_int)) ())
     ;;

      let test_int_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int32.(1 +|^| of_int 1 |> to_int)) ())
     ;;

      let test_shift_left_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Int32.(of_int 1 <<<+ 1 |> to_int)) ())
     ;;

      let test_shift_right_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int32.(of_int 1 >>>+ 1 |> to_int)) ())
     ;;

      let test_or_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int32.(of_int 1 |||+ 1 |> to_int)) ())
     ;;

      let test_and_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int32.(of_int 1 &&&+ 1 |> to_int)) ())
     ;;

      let test_xor_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int32.(of_int 1 |^|+ 1 |> to_int)) ())
     ;;

      let test_list =
        Alcotest.
          [ test_case "<<<" `Quick test_shift_left
          ; test_case "+<<<" `Quick test_int_shift_left
          ; test_case "<<<+" `Quick test_shift_left_int
          ; test_case ">>>" `Quick test_shift_right
          ; test_case ">>>+" `Quick test_shift_right_int
          ; test_case "+>>>" `Quick test_int_shift_right
          ; test_case "|||" `Quick test_or
          ; test_case "&&&" `Quick test_and
          ; test_case "|^|" `Quick test_xor
          ; test_case "+|^|" `Quick test_int_xor
          ; test_case "|^|+" `Quick test_xor_int
          ; test_case "+|||" `Quick test_int_or
          ; test_case "|||+" `Quick test_or_int
          ; test_case "+&&&" `Quick test_int_and
          ; test_case "&&&+" `Quick test_and_int
          ; test_case "!!!" `Quick test_not
          ]
      ;;
    end

    module Test_Int64 = struct
      let test_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Int64.(of_int 1 <<< of_int 1 |> to_int)) ())
     ;;

      let test_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int64.(of_int 1 >>> of_int 1 |> to_int)) ())
     ;;

      let test_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int64.(of_int 1 ||| of_int 1 |> to_int)) ())
     ;;

      let test_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int64.(of_int 1 &&& of_int 1 |> to_int)) ())
     ;;

      let test_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int64.(of_int 1 |^| of_int 1 |> to_int)) ())
     ;;

      let test_not : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          (-2)
          ((fun () -> Int64.(1 |> of_int |> ( !!! ) |> to_int)) ())
     ;;

      let test_int_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Int64.(1 +<<< of_int 1 |> to_int)) ())
     ;;

      let test_int_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int64.(1 +>>> of_int 1 |> to_int)) ())
     ;;

      let test_int_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int64.(1 +||| of_int 1 |> to_int)) ())
     ;;

      let test_int_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int64.(1 +&&& of_int 1 |> to_int)) ())
     ;;

      let test_int_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int64.(1 +|^| of_int 1 |> to_int)) ())
     ;;

      let test_shift_left_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Int64.(of_int 1 <<<+ 1 |> to_int)) ())
     ;;

      let test_shift_right_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int64.(of_int 1 >>>+ 1 |> to_int)) ())
     ;;

      let test_or_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int64.(of_int 1 |||+ 1 |> to_int)) ())
     ;;

      let test_and_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int64.(of_int 1 &&&+ 1 |> to_int)) ())
     ;;

      let test_xor_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int64.(of_int 1 |^|+ 1 |> to_int)) ())
     ;;

      let test_list =
        Alcotest.
          [ test_case "<<<" `Quick test_shift_left
          ; test_case "+<<<" `Quick test_int_shift_left
          ; test_case "<<<+" `Quick test_shift_left_int
          ; test_case ">>>" `Quick test_shift_right
          ; test_case ">>>+" `Quick test_shift_right_int
          ; test_case "+>>>" `Quick test_int_shift_right
          ; test_case "|||" `Quick test_or
          ; test_case "&&&" `Quick test_and
          ; test_case "|^|" `Quick test_xor
          ; test_case "+|^|" `Quick test_int_xor
          ; test_case "|^|+" `Quick test_xor_int
          ; test_case "+|||" `Quick test_int_or
          ; test_case "|||+" `Quick test_or_int
          ; test_case "+&&&" `Quick test_int_and
          ; test_case "&&&+" `Quick test_and_int
          ; test_case "!!!" `Quick test_not
          ]
      ;;
    end

    module Test_Int128 = struct
      let test_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Int128.(of_int 1 <<< of_int 1 |> to_int)) ())
     ;;

      let test_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int128.(of_int 1 >>> of_int 1 |> to_int)) ())
     ;;

      let test_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int128.(of_int 1 ||| of_int 1 |> to_int)) ())
     ;;

      let test_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int128.(of_int 1 &&& of_int 1 |> to_int)) ())
     ;;

      let test_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int128.(of_int 1 |^| of_int 1 |> to_int)) ())
     ;;

      let test_not : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          (-2)
          ((fun () -> Int128.(1 |> of_int |> ( !!! ) |> to_int)) ())
     ;;

      let test_int_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Int128.(1 +<<< of_int 1 |> to_int)) ())
     ;;

      let test_int_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int128.(1 +>>> of_int 1 |> to_int)) ())
     ;;

      let test_int_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int128.(1 +||| of_int 1 |> to_int)) ())
     ;;

      let test_int_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int128.(1 +&&& of_int 1 |> to_int)) ())
     ;;

      let test_int_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int128.(1 +|^| of_int 1 |> to_int)) ())
     ;;

      let test_shift_left_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Int128.(of_int 1 <<<+ 1 |> to_int)) ())
     ;;

      let test_shift_right_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int128.(of_int 1 >>>+ 1 |> to_int)) ())
     ;;

      let test_or_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int128.(of_int 1 |||+ 1 |> to_int)) ())
     ;;

      let test_and_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Int128.(of_int 1 &&&+ 1 |> to_int)) ())
     ;;

      let test_xor_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Int128.(of_int 1 |^|+ 1 |> to_int)) ())
     ;;

      let test_list =
        Alcotest.
          [ test_case "<<<" `Quick test_shift_left
          ; test_case "+<<<" `Quick test_int_shift_left
          ; test_case "<<<+" `Quick test_shift_left_int
          ; test_case ">>>" `Quick test_shift_right
          ; test_case ">>>+" `Quick test_shift_right_int
          ; test_case "+>>>" `Quick test_int_shift_right
          ; test_case "|||" `Quick test_or
          ; test_case "&&&" `Quick test_and
          ; test_case "|^|" `Quick test_xor
          ; test_case "+|^|" `Quick test_int_xor
          ; test_case "|^|+" `Quick test_xor_int
          ; test_case "+|||" `Quick test_int_or
          ; test_case "|||+" `Quick test_or_int
          ; test_case "+&&&" `Quick test_int_and
          ; test_case "&&&+" `Quick test_and_int
          ; test_case "!!!" `Quick test_not
          ]
      ;;
    end

    module Test_Uint8 = struct
      let test_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Uint8.(of_int 1 <<< of_int 1 |> to_int)) ())
     ;;

      let test_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint8.(of_int 1 >>> of_int 1 |> to_int)) ())
     ;;

      let test_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint8.(of_int 1 ||| of_int 1 |> to_int)) ())
     ;;

      let test_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint8.(of_int 1 &&& of_int 1 |> to_int)) ())
     ;;

      let test_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint8.(of_int 1 |^| of_int 1 |> to_int)) ())
     ;;

      let test_not : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          254
          ((fun () -> Uint8.(1 |> of_int |> ( !!! ) |> to_int)) ())
     ;;

      let test_int_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Uint8.(1 +<<< of_int 1 |> to_int)) ())
     ;;

      let test_int_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint8.(1 +>>> of_int 1 |> to_int)) ())
     ;;

      let test_int_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint8.(1 +||| of_int 1 |> to_int)) ())
     ;;

      let test_int_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint8.(1 +&&& of_int 1 |> to_int)) ())
     ;;

      let test_int_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint8.(1 +|^| of_int 1 |> to_int)) ())
     ;;

      let test_shift_left_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Uint8.(of_int 1 <<<+ 1 |> to_int)) ())
     ;;

      let test_shift_right_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint8.(of_int 1 >>>+ 1 |> to_int)) ())
     ;;

      let test_or_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint8.(of_int 1 |||+ 1 |> to_int)) ())
     ;;

      let test_and_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint8.(of_int 1 &&&+ 1 |> to_int)) ())
     ;;

      let test_xor_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint8.(of_int 1 |^|+ 1 |> to_int)) ())
     ;;

      let test_list =
        Alcotest.
          [ test_case "<<<" `Quick test_shift_left
          ; test_case "+<<<" `Quick test_int_shift_left
          ; test_case "<<<+" `Quick test_shift_left_int
          ; test_case ">>>" `Quick test_shift_right
          ; test_case ">>>+" `Quick test_shift_right_int
          ; test_case "+>>>" `Quick test_int_shift_right
          ; test_case "|||" `Quick test_or
          ; test_case "&&&" `Quick test_and
          ; test_case "|^|" `Quick test_xor
          ; test_case "+|^|" `Quick test_int_xor
          ; test_case "|^|+" `Quick test_xor_int
          ; test_case "+|||" `Quick test_int_or
          ; test_case "|||+" `Quick test_or_int
          ; test_case "+&&&" `Quick test_int_and
          ; test_case "&&&+" `Quick test_and_int
          ; test_case "!!!" `Quick test_not
          ]
      ;;
    end

    module Test_Uint16 = struct
      let test_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Uint16.(of_int 1 <<< of_int 1 |> to_int)) ())
     ;;

      let test_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint16.(of_int 1 >>> of_int 1 |> to_int)) ())
     ;;

      let test_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint16.(of_int 1 ||| of_int 1 |> to_int)) ())
     ;;

      let test_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint16.(of_int 1 &&& of_int 1 |> to_int)) ())
     ;;

      let test_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint16.(of_int 1 |^| of_int 1 |> to_int)) ())
     ;;

      let test_not : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          65534
          ((fun () -> Uint16.(1 |> of_int |> ( !!! ) |> to_int)) ())
     ;;

      let test_int_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Uint16.(1 +<<< of_int 1 |> to_int)) ())
     ;;

      let test_int_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint16.(1 +>>> of_int 1 |> to_int)) ())
     ;;

      let test_int_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint16.(1 +||| of_int 1 |> to_int)) ())
     ;;

      let test_int_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint16.(1 +&&& of_int 1 |> to_int)) ())
     ;;

      let test_int_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint16.(1 +|^| of_int 1 |> to_int)) ())
     ;;

      let test_shift_left_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Uint16.(of_int 1 <<<+ 1 |> to_int)) ())
     ;;

      let test_shift_right_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint16.(of_int 1 >>>+ 1 |> to_int)) ())
     ;;

      let test_or_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint16.(of_int 1 |||+ 1 |> to_int)) ())
     ;;

      let test_and_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint16.(of_int 1 &&&+ 1 |> to_int)) ())
     ;;

      let test_xor_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint16.(of_int 1 |^|+ 1 |> to_int)) ())
     ;;

      let test_list =
        Alcotest.
          [ test_case "<<<" `Quick test_shift_left
          ; test_case "+<<<" `Quick test_int_shift_left
          ; test_case "<<<+" `Quick test_shift_left_int
          ; test_case ">>>" `Quick test_shift_right
          ; test_case ">>>+" `Quick test_shift_right_int
          ; test_case "+>>>" `Quick test_int_shift_right
          ; test_case "|||" `Quick test_or
          ; test_case "&&&" `Quick test_and
          ; test_case "|^|" `Quick test_xor
          ; test_case "+|^|" `Quick test_int_xor
          ; test_case "|^|+" `Quick test_xor_int
          ; test_case "+|||" `Quick test_int_or
          ; test_case "|||+" `Quick test_or_int
          ; test_case "+&&&" `Quick test_int_and
          ; test_case "&&&+" `Quick test_and_int
          ; test_case "!!!" `Quick test_not
          ]
      ;;
    end

    module Test_Uint32 = struct
      let test_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Uint32.(of_int 1 <<< of_int 1 |> to_int)) ())
     ;;

      let test_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint32.(of_int 1 >>> of_int 1 |> to_int)) ())
     ;;

      let test_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint32.(of_int 1 ||| of_int 1 |> to_int)) ())
     ;;

      let test_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint32.(of_int 1 &&& of_int 1 |> to_int)) ())
     ;;

      let test_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint32.(of_int 1 |^| of_int 1 |> to_int)) ())
     ;;

      let test_not : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          4294967294
          ((fun () -> Uint32.(1 |> of_int |> ( !!! ) |> to_int)) ())
     ;;

      let test_int_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Uint32.(1 +<<< of_int 1 |> to_int)) ())
     ;;

      let test_int_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint32.(1 +>>> of_int 1 |> to_int)) ())
     ;;

      let test_int_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint32.(1 +||| of_int 1 |> to_int)) ())
     ;;

      let test_int_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint32.(1 +&&& of_int 1 |> to_int)) ())
     ;;

      let test_int_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint32.(1 +|^| of_int 1 |> to_int)) ())
     ;;

      let test_shift_left_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Uint32.(of_int 1 <<<+ 1 |> to_int)) ())
     ;;

      let test_shift_right_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint32.(of_int 1 >>>+ 1 |> to_int)) ())
     ;;

      let test_or_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint32.(of_int 1 |||+ 1 |> to_int)) ())
     ;;

      let test_and_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint32.(of_int 1 &&&+ 1 |> to_int)) ())
     ;;

      let test_xor_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint32.(of_int 1 |^|+ 1 |> to_int)) ())
     ;;

      let test_list =
        Alcotest.
          [ test_case "<<<" `Quick test_shift_left
          ; test_case "+<<<" `Quick test_int_shift_left
          ; test_case "<<<+" `Quick test_shift_left_int
          ; test_case ">>>" `Quick test_shift_right
          ; test_case ">>>+" `Quick test_shift_right_int
          ; test_case "+>>>" `Quick test_int_shift_right
          ; test_case "|||" `Quick test_or
          ; test_case "&&&" `Quick test_and
          ; test_case "|^|" `Quick test_xor
          ; test_case "+|^|" `Quick test_int_xor
          ; test_case "|^|+" `Quick test_xor_int
          ; test_case "+|||" `Quick test_int_or
          ; test_case "|||+" `Quick test_or_int
          ; test_case "+&&&" `Quick test_int_and
          ; test_case "&&&+" `Quick test_and_int
          ; test_case "!!!" `Quick test_not
          ]
      ;;
    end

    module Test_Uint64 = struct
      let test_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Uint64.(of_int 1 <<< of_int 1 |> to_int)) ())
     ;;

      let test_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint64.(of_int 1 >>> of_int 1 |> to_int)) ())
     ;;

      let test_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint64.(of_int 1 ||| of_int 1 |> to_int)) ())
     ;;

      let test_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint64.(of_int 1 &&& of_int 1 |> to_int)) ())
     ;;

      let test_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint64.(of_int 1 |^| of_int 1 |> to_int)) ())
     ;;

      let test_not : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          (-2)
          ((fun () -> Uint64.(1 |> of_int |> ( !!! ) |> to_int)) ())
     ;;

      let test_int_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Uint64.(1 +<<< of_int 1 |> to_int)) ())
     ;;

      let test_int_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint64.(1 +>>> of_int 1 |> to_int)) ())
     ;;

      let test_int_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint64.(1 +||| of_int 1 |> to_int)) ())
     ;;

      let test_int_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint64.(1 +&&& of_int 1 |> to_int)) ())
     ;;

      let test_int_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint64.(1 +|^| of_int 1 |> to_int)) ())
     ;;

      let test_shift_left_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Uint64.(of_int 1 <<<+ 1 |> to_int)) ())
     ;;

      let test_shift_right_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint64.(of_int 1 >>>+ 1 |> to_int)) ())
     ;;

      let test_or_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint64.(of_int 1 |||+ 1 |> to_int)) ())
     ;;

      let test_and_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint64.(of_int 1 &&&+ 1 |> to_int)) ())
     ;;

      let test_xor_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint64.(of_int 1 |^|+ 1 |> to_int)) ())
     ;;

      let test_list =
        Alcotest.
          [ test_case "<<<" `Quick test_shift_left
          ; test_case "+<<<" `Quick test_int_shift_left
          ; test_case "<<<+" `Quick test_shift_left_int
          ; test_case ">>>" `Quick test_shift_right
          ; test_case ">>>+" `Quick test_shift_right_int
          ; test_case "+>>>" `Quick test_int_shift_right
          ; test_case "|||" `Quick test_or
          ; test_case "&&&" `Quick test_and
          ; test_case "|^|" `Quick test_xor
          ; test_case "+|^|" `Quick test_int_xor
          ; test_case "|^|+" `Quick test_xor_int
          ; test_case "+|||" `Quick test_int_or
          ; test_case "|||+" `Quick test_or_int
          ; test_case "+&&&" `Quick test_int_and
          ; test_case "&&&+" `Quick test_and_int
          ; test_case "!!!" `Quick test_not
          ]
      ;;
    end

    module Test_Uint128 = struct
      let test_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Uint128.(of_int 1 <<< of_int 1 |> to_int)) ())
     ;;

      let test_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint128.(of_int 1 >>> of_int 1 |> to_int)) ())
     ;;

      let test_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint128.(of_int 1 ||| of_int 1 |> to_int)) ())
     ;;

      let test_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint128.(of_int 1 &&& of_int 1 |> to_int)) ())
     ;;

      let test_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint128.(of_int 1 |^| of_int 1 |> to_int)) ())
     ;;

      let test_not : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          (-2)
          ((fun () -> Uint128.(1 |> of_int |> ( !!! ) |> to_int)) ())
     ;;

      let test_int_shift_left : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Uint128.(1 +<<< of_int 1 |> to_int)) ())
     ;;

      let test_int_shift_right : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint128.(1 +>>> of_int 1 |> to_int)) ())
     ;;

      let test_int_or : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint128.(1 +||| of_int 1 |> to_int)) ())
     ;;

      let test_int_and : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint128.(1 +&&& of_int 1 |> to_int)) ())
     ;;

      let test_int_xor : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint128.(1 +|^| of_int 1 |> to_int)) ())
     ;;

      let test_shift_left_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          2
          ((fun () -> Uint128.(of_int 1 <<<+ 1 |> to_int)) ())
     ;;

      let test_shift_right_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint128.(of_int 1 >>>+ 1 |> to_int)) ())
     ;;

      let test_or_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint128.(of_int 1 |||+ 1 |> to_int)) ())
     ;;

      let test_and_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          1
          ((fun () -> Uint128.(of_int 1 &&&+ 1 |> to_int)) ())
     ;;

      let test_xor_int : unit -> unit =
       fun () ->
        Alcotest.(check int)
          "same value"
          0
          ((fun () -> Uint128.(of_int 1 |^|+ 1 |> to_int)) ())
     ;;

      let test_list =
        Alcotest.
          [ test_case "<<<" `Quick test_shift_left
          ; test_case "+<<<" `Quick test_int_shift_left
          ; test_case "<<<+" `Quick test_shift_left_int
          ; test_case ">>>" `Quick test_shift_right
          ; test_case ">>>+" `Quick test_shift_right_int
          ; test_case "+>>>" `Quick test_int_shift_right
          ; test_case "|||" `Quick test_or
          ; test_case "&&&" `Quick test_and
          ; test_case "|^|" `Quick test_xor
          ; test_case "+|^|" `Quick test_int_xor
          ; test_case "|^|+" `Quick test_xor_int
          ; test_case "+|||" `Quick test_int_or
          ; test_case "|||+" `Quick test_or_int
          ; test_case "+&&&" `Quick test_int_and
          ; test_case "&&&+" `Quick test_and_int
          ; test_case "!!!" `Quick test_not
          ]
      ;;
    end

    let test_list =
      [ "Uint8", Test_Uint8.test_list
      ; "Uint16", Test_Uint16.test_list
      ; "Uint32", Test_Uint32.test_list
      ; "Uint64", Test_Uint64.test_list
      ; "Uint128", Test_Uint128.test_list
      ; "Int8", Test_Int8.test_list
      ; "Int16", Test_Int16.test_list
      ; "Int32", Test_Int32.test_list
      ; "Int64", Test_Int64.test_list
      ; "Int128", Test_Int128.test_list
      ]
    ;;
  end
end

let _ = Alcotest.(run "Stdint_Pro Tests" Test_Ext.Test_Operator.test_list)
