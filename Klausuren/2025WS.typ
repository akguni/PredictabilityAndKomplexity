#set page(paper: "a4", margin: 2cm)
#set text(lang: "de", size: 10pt)
#set par(justify: true)

#align(center)[
  #text(size: 15pt, weight: "bold")[
    Klausur Berechenbarkeit und Verifikation WS 2025/2026
  ]
  \
  #text(size: 13pt, weight: "bold")[
    Klausurteil Berechenbarkeit und Komplexität
  ]
  \
  24.02.2026
]

#v(1em)

*Bearbeitungszeit:* 60 Minuten (Richtwert innerhalb der Modulbearbeitungszeit von 120 Minuten)

*Erlaubte Hilfsmittel:* keine

Bitte notieren Sie Ihre Antworten ausschließlich auf dem Aufgabenblatt. Bei Bedarf benutzen Sie die gegenüberliegende Rückseite. Für Skizzen und Entwürfe steht ebenfalls die Rückseite zur Verfügung. Entwürfe, die nicht gewertet werden sollen, sind durchzustreichen.

Insgesamt gibt es für diesen Klausurteil 30 Bewertungseinheiten (BE) zu erzielen. Dieser Klausurteil geht zu 50% in die Modulnote ein. Sie müssen insgesamt 50% von beiden Klausuren dieses Moduls erzielen, um zu bestehen. Die einzelnen Teilklausuren müssen nicht separat bestanden werden. Viel Erfolg!

= Aufgabe 1

*Betrachten Sie folgende Funktion als Berechnungsproblem:*

$f: NN -> NN$, $f(0) = 1$, und für $n >= 1$ ist $f(n)$ die $n$-te Ziffer von $sqrt(2)$ nach dem Komma. Zum Beispiel gilt $f(1) = f(3) = 4$, da $sqrt(2) = 1,414...$.

a) Da jedes Problem eine Menge ist: Geben Sie ein Element an, das in diesem Berechnungsproblem liegt, und eines, das nicht in diesem Berechnungsproblem liegt.
b) Ist $f$ rekursiv bzw. rekursiv aufzählbar? Begründen Sie Ihre Antwort für beide Begriffe.
c) Formulieren Sie das zugehörige Entscheidungsproblem als Menge. Sie müssen nicht exakter vorgehen als die obige Schreibweise, in der $f$ definiert wurde.
d) Betrachten Sie das Komplement von $f$: Ist dieses Komplement auch eine Funktion? Begründen Sie Ihre Antwort.
e) Ist das Komplement von $f$ ebenfalls rekursiv bzw. rekursiv aufzählbar? Begründen Sie Ihre Antwort.

*Antworten:*

a) Als Element des Graphen von $f$ gilt $(0,1) in f$. Dagegen gilt $(1,2) not in f$, denn $f(1)=4$.

b) $f$ ist rekursiv: Die Ziffern von $sqrt(2)$ lassen sich mit beliebiger Genauigkeit berechnen. Um $f(n)$ zu berechnen, berechnet man also genügend viele Nachkommastellen von $sqrt(2)$ und gibt die $n$-te Ziffer aus. Insbesondere ist $f$ auch rekursiv aufzählbar, denn jede rekursive Menge ist rekursiv aufzählbar.

c) Das zugehörige Entscheidungsproblem kann als Graph der Funktion geschrieben werden:
$ G_f = {(n,y) in NN times NN : f(n)=y}. $
Ein gleichwertiges Entscheidungsproblem fragt, ob für gegebene $n,y$ die Gleichung $f(n)=y$ gilt.

d) Nein. Das Komplement des Graphen ist
$ overline{G_f}
  = {(n,y) in NN times NN : f(n) != y}. $
Für ein festes $n$ gibt es mehrere $y$, für die $f(n) != y$ gilt. Daher
enthält das Komplement für ein Argument $n$ mehrere mögliche Werte und ist
kein Funktionsgraph.

e) Das Komplement ist rekursiv: Zu gegebenen $n,y$ kann man $f(n)$ berechnen und anschließend testen, ob $f(n) != y$. Somit ist es auch rekursiv aufzählbar.

= Aufgabe 2

Gegeben sei die Turingmaschine $T$, deren Übergangsfunktion durch folgende Tabelle beschrieben wird:

#table(
  columns: 3,
  inset: 6pt,
  align: center,
  [*Zeichen*], [*Zustand $q_0$*], [*Zustand $q_3$*],
  [Zeichen $0$], [$(q_3, 0, R)$], [$(q_0, 1, L)$],
  [Zeichen $1$], [$(q_3, 1, R)$], [$(q_0, 0, L)$],
  [Leerzeichen $square$], [$(q_3, square, R)$], [$(q_0, square, L)$],
)

a) Welches ist die Sprache $S$ dieser Turingmaschine $T$?

b) Ist diese Sprache $S$ rekursiv? Begründen Sie Ihre Antwort.

c) Gegeben sei die Menge $M$ aller Gödelnummern von Turingmaschinen, deren Sprache ebenfalls $S$ ist. Ist diese Menge $M$ rekursiv? Begründen Sie Ihre Antwort.

*Antworten:*

a) Unter der Annahme, dass weder $q_0$ noch $q_3$ ein Haltezustand ist,
  hält die Maschine auf keiner Eingabe. In beiden Zuständen ist für jedes
  mögliche Bandzeichen ein Übergang definiert, und jeder Übergang führt in
  einen der beiden Zustände zurück. Daher akzeptiert die Maschine kein Wort und
$ S = emptyset. $

b) Ja. Die leere Sprache ist rekursiv: Ein Entscheider kann jede Eingabe verwerfen und hält dabei immer.

c) Nein. Die Menge
$ M = {⟨N⟩ : L(N)=emptyset} $
ist nicht rekursiv. Nach dem Satz von Rice ist jede nichttriviale semantische Eigenschaft der von Turingmaschinen erkannten Sprachen unentscheidbar. Die Eigenschaft, die leere Sprache zu erkennen, ist nichttrivial: Manche Maschinen erkennen die leere Sprache, andere nicht.

= Aufgabe 3

Führen Sie die Nichtberechenbarkeit des Halteproblems darauf zurück, dass die Sprache
$ L_U = {⟨M,w⟩ : M "akzeptiert" w} $
nicht rekursiv ist.

Definieren Sie dafür zunächst das Halteproblem in derselben Genauigkeit, wie oben $L_U$ definiert wurde. Erwähnen Sie dann, was Sie zeigen müssen, und führen Sie den Beweis durch.

*Antwort:*

Wir definieren das Halteproblem als
$ H = {⟨M,w⟩ : M "hält bei Eingabe" w}. $
Hier zählt sowohl das Akzeptieren als auch das Verwerfen als Halten.

Um zu zeigen, dass $H$ nicht rekursiv ist, reduzieren wir $H$ auf $L_U$. Wir konstruieren eine berechenbare Abbildung $g$, sodass
$ ⟨M,w⟩ in H
    <==>  
  g(⟨M,w⟩) in L_U. $

Zu einer Eingabe $⟨M,w⟩$ erzeugen wir eine Maschine $M'$, die auf jeder Eingabe $x$ $M$ auf $w$ simuliert. Falls $M$ auf $w$ hält — unabhängig davon, ob $M$ akzeptiert oder verwirft — akzeptiert $M'$ anschließend $x$. Falls $M$ auf $w$ nicht hält, läuft auch $M'$ endlos.

Wir setzen
$ g(⟨M,w⟩) = ⟨M', epsilon⟩ $, wobei $epsilon$ das leere Wort ist. Dann gilt
$ ⟨M,w⟩ in H
    <==>  
  ⟨M', epsilon⟩ in L_U. $

Wäre $L_U$ rekursiv, könnten wir mit einem Entscheider für $L_U$ auch $H$ entscheiden. Das widerspricht der Nichtrekursivität des Halteproblems. Also ist $L_U$ nicht rekursiv.

= Aufgabe 4

Betrachten Sie die Transformation zwischen den Problemen SAT und 3SAT:

a) Welches Problem wird als NP-vollständig vorausgesetzt und welches soll als NP-vollständig bewiesen werden?

b) Zeigen Sie die wesentlichen Ideen der Transformation durch die entscheidenden Fallunterscheidungen.

*Antworten:*

a) SAT wird als NP-vollständig vorausgesetzt. Zu zeigen ist, dass 3SAT NP-vollständig ist.

b) Für die Reduktion wird jede Klausel der SAT-Formel in äquivalente Klauseln mit genau drei Literalen umgeformt. Neue Variablen werden bei Bedarf hinzugefügt.

- Eine Einheitsklausel $(x)$ wird ersetzt durch $(x or x or x)$.
- Eine Klausel mit zwei Literalen $(x or y)$ wird ersetzt durch $(x or y or y)$.
- Eine Klausel mit drei Literalen bleibt unverändert.
- Für eine Klausel mit $k > 3$ Literalen,
  $ (l_1 or l_2 or dots or l_k), $
  verwenden wir neue Variablen $z_1, dots, z_{k-3}$. Die erste Klausel ist
  $(l_1 or l_2 or z_1)$, die letzte ist
  $(not z_{k-3} or l_{k-1} or l_k)$. Dazwischen stehen für
  $i=1, dots, k-4$ die Klauseln $(not z_i or l_{i+2} or z_{i+1})$.
  Die neuen Variablen können so gewählt werden, dass die entstehende Konjunktion genau dann erfüllbar ist, wenn die ursprüngliche Klausel erfüllbar ist.

Die Transformation ist in Polynomialzeit durchführbar. Außerdem liegt 3SAT in NP, weil eine vorgeschlagene Wahrheitsbelegung in Polynomialzeit überprüft werden kann. Zusammen mit der NP-Härte durch die Reduktion folgt, dass 3SAT NP-vollständig ist.

= Aufgabe 5

Erklären Sie, warum aus der Definition der co-Klassen nicht folgt, dass co-NP = NP gilt. Begründen Sie das mit der Definition, was es bedeutet, dass ein Problem in NP liegt.

*Antwort:*

Ein Entscheidungsproblem liegt in NP, wenn es für jede Ja-Instanz ein Zertifikat gibt, das sich in Polynomialzeit überprüfen lässt. Für Nein-Instanzen ist ein solches Zertifikat nicht verlangt.

Ein Problem liegt in co-NP, wenn sein Komplement in NP liegt. Das bedeutet, dass für Nein-Instanzen des ursprünglichen Problems Zertifikate vorhanden sind, die sich in Polynomialzeit überprüfen lassen.

Diese Definitionen liefern unterschiedliche Zertifikate für unterschiedliche Fälle. Sie zeigen weder, dass $N P subset.eq co-N P$, noch, dass $co-N P subset.eq N P$. Daher folgt aus den Definitionen nicht, dass $co-N P = N P$. Ob diese Gleichheit gilt, ist ein offenes Problem.

= Aufgabe 6

Betrachten Sie folgendes Problem: Gegeben ein Graph $G$.

Hat $G$ den folgenden Graphen als Untergraphen?

#align(center)[
  *Der abgebildete Graph ist ein Dreieck $K_3$.*
]

Der in der Aufgabenstellung gezeigte Graph ist ein Dreieck, also der vollständige Graph $K_3$.

a) Begründen Sie, zu welcher Komplexitätsklasse dieses Problem gehört.

b) Erwähnen Sie, welches allgemeinere Problem NP-vollständig ist, und begründen Sie, warum dieses Problem nicht NP-vollständig ist.

*Antworten:*

a) Das Problem gehört zu $P$. Man kann alle Dreiergruppen von Knoten in $G$ überprüfen und testen, ob zwischen den drei Knoten jeweils eine Kante existiert. Das benötigt höchstens $O(n^3)$ Tests für einen Graphen mit $n$ Knoten.

b) Das allgemeine *Clique*-Problem ist NP-vollständig: Als Eingabe erhält man einen Graphen $G$ und eine Zahl $k$, und gefragt wird, ob $G$ eine Clique der Größe mindestens $k$ enthält.

Hier ist die gesuchte Größe jedoch fest auf $3$ gesetzt. Deshalb lässt sich das Problem in Polynomialzeit lösen, wie in Teil a) gezeigt. Streng genommen kann man daraus allein nicht folgern, dass es nicht NP-vollständig ist: Ein Problem in $P$ wäre genau dann NP-vollständig, wenn $P=N P$. Unter der üblichen Annahme $P != N P$ ist dieses Problem daher nicht NP-vollständig.
