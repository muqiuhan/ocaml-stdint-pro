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

module Operator = struct
  include Stdint

  module Uint8 = struct
    include Uint8
    include Template.Operator_Template (Uint8)
  end

  module Uint16 = struct
    include Uint16
    include Template.Operator_Template (Uint16)
  end

  module Uint32 = struct
    include Uint32
    include Template.Operator_Template (Uint32)
  end

  module Uint64 = struct
    include Uint64
    include Template.Operator_Template (Uint64)
  end

  module Uint128 = struct
    include Uint128
    include Template.Operator_Template (Uint128)
  end

  module Int8 = struct
    include Int8
    include Template.Operator_Template (Int8)
  end

  module Int16 = struct
    include Int16
    include Template.Operator_Template (Int16)
  end

  module Int32 = struct
    include Int32
    include Template.Operator_Template (Int32)
  end

  module Int64 = struct
    include Int64
    include Template.Operator_Template (Int64)
  end

  module Int128 = struct
    include Int128
    include Template.Operator_Template (Int128)
  end
end