(lang dune 3.5)

(name stdint_pro)

(generate_opam_files true)

(source
 (github muqiuhan/ocaml-stdint-pro))

(authors "Muqiu Han")

(maintainers "Muqiu Han")

(license MIT)

(documentation https://github.com/muqiuhan/ocaml-stdint-pro)

(package
 (name stdint_pro)
 (allow_empty)
 (synopsis "Improve ocaml-stdint")
 (description "Improve the usability of stdint from OCaml level")
 (depends ocaml dune stdint stdint-literals)
 (tags
  (stdint integer)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
