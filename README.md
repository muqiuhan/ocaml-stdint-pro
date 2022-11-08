<div align="center">

# OCaml-Stdint-Pro
*Improve the usability of stdint from OCaml level*

</div>

---

__WHY_THIS_PROJECT?__

[ocaml-stdint](https://github.com/andrenth/ocaml-stdint) provides extensions to OCaml's own integer types, but sometimes not enough, such as the lack of many bit operators.

So the goal of this library is to provide a __simple__ layer of extensions over ocaml-stdint that doesn't involve the underlying ffi code.

__DEPENDS__

For testing, this library uses [alcotest](https://github.com/mirage/alcotest) for full-coverage unit testing.

- [alcotest](https://github.com/mirage/alcotest) :  A lightweight and colourful test framework.
- [ocaml-stdint](https://github.com/andrenth/ocaml-stdint) :  Various signed and unsigned integers for OCaml 

```opam install alcotest stdint```

__BUILD AND USE__

```dune build @runtest @install```
and
```dune install```

---

Copyright (c) 2022 Muqiu Han

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE
OR OTHER DEALINGS IN THE SOFTWARE.