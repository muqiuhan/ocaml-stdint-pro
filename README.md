<div align="center">

# OCaml-Stdint-Pro
*Improve the usability of stdint from OCaml level*

</div>

---

[ocaml-stdint](https://github.com/andrenth/ocaml-stdint) provides extensions to OCaml's own integer types, but sometimes not enough, such as the lack of many bit operators.

So the goal of this library is to provide a __simple__ layer of extensions over ocaml-stdint that doesn't involve the underlying ffi code.

The library relies on [stdint](https://github.com/andrenth/ocaml-stdint) as the base and [stdint-literal](https://github.com/Firobe/ocaml-stdint-literals), which is used to provide the former with more expressive power at the source level.

For testing, the library uses [alcotest](https://github.com/mirage/alcotest) for full-coverage unit testing.


---

Copyright (c) 2022 Muqiu Han