#let template(
  title: [],
  body
) = {
  set heading(numbering: "1.")
  set math.equation(numbering: "1.")

  align(center)[
    #text(weight: 700, size: 20pt)[#title]
  ]
  
  body
}
