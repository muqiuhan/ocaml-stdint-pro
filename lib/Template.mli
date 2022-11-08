module Operator_Template :
  functor (Stdint_Modules : Stdint.Int) ->
    sig
      val ( <<< ) : Stdint_Modules.t -> Stdint_Modules.t -> Stdint_Modules.t
      val ( >>> ) : Stdint_Modules.t -> Stdint_Modules.t -> Stdint_Modules.t
      val ( ||| ) : Stdint_Modules.t -> Stdint_Modules.t -> Stdint_Modules.t
      val ( &&& ) : Stdint_Modules.t -> Stdint_Modules.t -> Stdint_Modules.t
      val ( |^| ) : Stdint_Modules.t -> Stdint_Modules.t -> Stdint_Modules.t
      val ( !!! ) : Stdint_Modules.t -> Stdint_Modules.t
      val ( +<<< ) : int -> Stdint_Modules.t -> Stdint_Modules.t
      val ( +>>> ) : int -> Stdint_Modules.t -> Stdint_Modules.t
      val ( +||| ) : int -> Stdint_Modules.t -> Stdint_Modules.t
      val ( +&&& ) : int -> Stdint_Modules.t -> Stdint_Modules.t
      val ( +|^| ) : int -> Stdint_Modules.t -> Stdint_Modules.t
      val ( <<<+ ) : Stdint_Modules.t -> int -> Stdint_Modules.t
      val ( >>>+ ) : Stdint_Modules.t -> int -> Stdint_Modules.t
      val ( |||+ ) : Stdint_Modules.t -> int -> Stdint_Modules.t
      val ( &&&+ ) : Stdint_Modules.t -> int -> Stdint_Modules.t
      val ( |^|+ ) : Stdint_Modules.t -> int -> Stdint_Modules.t
    end
