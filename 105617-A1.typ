#set page(
  paper: "a4",
  margin: (top: 18mm, bottom: 18mm, left: 20mm, right: 20mm),
)
#set text(size: 14pt)

#let answer-space(prompt: [Start here ...], extra-top: 0pt, extra-bottom: 0pt) = {
  box(
    width: 100%,
    stroke: .5pt,
  )[
    #pad(
      left: 6pt,
      right: 6pt,
      top: 8pt + extra-top,
      bottom: 8pt + extra-bottom,
    )[
      #align(left, emph(prompt))
    ]
  ]
  v(4mm)
}
#align(center)[
  #text(size: 16pt, weight: "bold")[Übungsaufgaben]
  #v(4mm)
  #text(size: 14pt, weight: "bold")[Ismail Akgün stud105617]
  #v(2mm)
  #text(size: 14pt, weight: "bold")[Aufgabe 1]
]

#v(8mm)

= 1)

- [a)] #answer-space(prompt: $Pi={(x, y) in RR times RR | y = x^2}$)
- [b)] #answer-space(
  prompt: $Pi={(n, m) in NN times NN | n=sum_(i=0)^(floor(log_{10}(m))) floor((m mod 10^{i+1}) / 10^i)}$,
  extra-top: 4pt, extra-bottom: 4pt,
)
- [c)] #answer-space(prompt: $Pi={(x, y) in RR times ZZ | y^2 = x}$)
- [d)] #answer-space(prompt: "a: Ja. Für jede Eingabe gibt es immer genau eine Lösung in der Lösungsmenge.
b: Nein. Es gibt mehr als eine Lösung, die zur gleichen Eingabe passt, z. B. (3, 111) und (3, 201) sind beide in der Lösungsmenge.
c: Nein. Es gibt beispielsweise keine ganze Zahl, deren Quadrat 2 ist.")
- [e)] #answer-space(prompt: "Ergebnis ...")

#pagebreak()

= 2)

- [a)] #answer-space(prompt: "Formulierung ...")
- [b)] #answer-space(prompt: "Erweiterung ...")

= 3)

#answer-space(prompt: "Algorithmus oder Ablauf ...")

= 4)

#answer-space(prompt: "Vergleich oder Reduktion ...")

#pagebreak()

= 5)

#answer-space(prompt: [
  $M = (Q, Sigma, Gamma, delta, b, q_0, F)$ where \
  $Q={q_0, q_1, q_e}$\
  $Sigma={0,1,2,3,4,5,6,7,8,9}$\
  $Gamma = Sigma union {b}$\
 

  $delta = {
  cases(
    ((q_0, i), (q_0, i, R)) "where" i in {0, 1, 2, 3, 4, 5, 6, 7, 8, 9},
    ((q_0, b), (q_1, b, L)),
    ((q_1, i), (q_e, i + 1, M)) "where" i in {0, 1, 2, 3, 4, 5, 6, 7, 8},
    ((q_1, 9), (q_1, 0, L)),
    ((q_1, b), (q_e, 1, M)),
  )
}$

 $F={q_e}$
  ], extra-bottom: 6pt)

= 6)

#answer-space(prompt: [#table(
  columns: (auto, auto, auto),
  align: center,
  inset: 6pt,
  stroke: (x, y) => (
  left: if x == 1 or x == 2 { 0.6pt } else { none },
  bottom: if y == 0 { 0.6pt } else { none },
),

  [], [$q_0$], [$q_1$],

  [\|], [$\|, q_1, R$], [$\|, q_0, R$],
  [b], [$b, q_y, M$], [$b, q_n, M$],
)

Ja, das funktioniert auch, bei keiner Eingabestrich. Der Lesekopf liest b und landet bei $q_y$, was die richtige Lösung ist, da 0 eine gerade Zahl ist.])

= 7)

#answer-space(prompt: "Verbesserte Zustände ...")
