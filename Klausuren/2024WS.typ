#set page(paper: "a4", margin: 2cm)
#set text(lang: "de", size: 10pt)
#set par(justify: true)

= Lösungen mit Vergleich zur Handschrift

== Aufgabe 1

=== a)

*Handschriftliche Lösung (transkribiert):*
$ P_1 = {(n,m) in NN times NN | m=n+1}. $

*Bewertung:* Diese Antwort ist richtig.

=== b)

*Handschriftliche Lösung (transkribiert):*  
„Ja, jede natürliche Zahl hat einen eindeutigen Nachfolger.“

*Bewertung:* Richtig.

=== c)

*Handschriftliche Lösung (transkribiert):*
$ E_1 =
  {((n,m),x) in (NN times NN) times {0,1}
  | (x=1) <==> (m=n+1)}. $

*Bewertung:* Im Wesentlichen richtig. Das ist eine Darstellung über die charakteristische Funktion des Entscheidungsproblems. Einfacher lässt sich das Entscheidungsproblem als Menge der Ja-Instanzen angeben:
$ E_1 = {(n,m) in NN times NN : m=n+1}. $

=== d)

*Handschriftliche Lösung (transkribiert):*  
„Ja, der Wertebereich ist eindeutig.“

*Notice (English):* The response seems to confuse the decision problem with the function it decides. A decision problem is a set of instances, not a function. Its characteristic function is a function, but that is a separate object.

*Korrigierte Lösung:*  
Als Menge $E_1$ ist das Entscheidungsproblem keine Funktion. Die zugehörige
charakteristische Funktion bildet $(n,m)$ auf $1$ ab, falls $m=n+1$, und
sonst auf $0$.

=== e)

*Handschriftliche Lösung (transkribiert):*  
„Rekursiv, da eine TM den Nachfolger leicht berechnen kann $=>$ auch rekursiv aufzählbar.“

*Notice (English):* The conclusion is right, but it refers to computing the successor. Part (e) asks about the decision problem $E_1$. The answer should explain how to decide whether $m=n+1$.

*Korrigierte Lösung:*  
$E_1$ ist rekursiv: Zu gegebenen $n,m$ kann man in endlicher Zeit prüfen, ob $m=n+1$. Jede rekursive Menge ist auch rekursiv aufzählbar. Daher ist $E_1$ rekursiv aufzählbar.

== Aufgabe 2

*Handschriftliche Lösung (transkribiert):*  
Die Handschrift gibt eine Übergangstabelle mit Zuständen $q_0,q_1,q_2$ an. Daneben steht sinngemäß: „für Bild“, „für Zustandswechsel“, „für sinnvolle Richtigkeit“ sowie der Hinweis, dass ein anfangs leeres Band berücksichtigt werden soll.

*Notice (English):* The table is not reliably legible in the scan, and it is not clear that its transitions correctly implement binary increment for every input, especially inputs ending in one or more `1`s and the input `0`. I can’t safely present it as a verified solution.

*Korrigierte Lösung:*  
Eine Turingmaschine kann den Nachfolger einer Binärzahl in drei Phasen berechnen:

1. Vom linken Rand der Eingabe bis zum ersten Leerzeichen nach rechts laufen.
2. Eine Position nach links gehen und binär `1` addieren: Jede gelesene `1` wird zu `0`, und der Übertrag geht nach links. Bei der ersten gelesenen `0` wird eine `1` geschrieben und der Übertrag beendet. Falls der Übertrag über das linke Ende hinausläuft, wird dort eine neue `1` geschrieben.
3. Halten.

Beispiele:
$ 1011 -> 1100,  
  111 -> 1000,  
  0 -> 1. $
Diese endliche Prozedur lässt sich mit einer Turingmaschine umsetzen.

== Aufgabe 3

=== a)

*Handschriftliche Lösung (transkribiert):*  
„$S_2=NN$ (alle natürlichen Zahlen werden akzeptiert).“

*Bewertung:* Richtig, wenn $T_2$ die in Aufgabe 2 gemeinte Maschine ist, die gültige Binärdarstellungen verarbeitet und akzeptiert. Präziser ist die Sprache über dem Eingabealphabet:
$ S_2={0,1}^*, $
unter der in Aufgabe 2 festgelegten Eingabekonvention.

=== b)

*Handschriftliche Lösung (transkribiert):*
$ P_3={⟨T⟩ | L(T)=NN}. $

*Bewertung:* Im Wesentlichen richtig. Präziser formuliert:
$ P_3={⟨T⟩ : L(T)=S_2}. $

=== c)

*Handschriftliche Lösung (transkribiert):*  
„$⟨T⟩$ ist die Gödelnummer von $T$.“

*Bewertung:* Richtig.

=== d)

*Handschriftliche Lösung (transkribiert):*  
„Ja, man kann leicht erkennen, ob auf dem Band eine natürliche Zahl steht.“

*Notice (English):* This seems to answer whether a string is a valid representation of a natural number, rather than whether the language $S_2$ is recursive.

*Korrigierte Lösung:*  
$S_2$ ist rekursiv. Ein Entscheider akzeptiert genau die Wörter der Sprache. Bei $S_2={0,1}^*$ akzeptiert er jedes Eingabewort und hält.

=== e)

*Handschriftliche Lösung (transkribiert):*  
„Nein, wegen Satz von Rice: nichttriviale Eigenschaft.“

*Bewertung:* Richtig in seiner Kernaussage, aber die Eigenschaft sollte benannt werden.

*Korrigierte Lösung:*  
$P_3$ ist nicht rekursiv. Es fragt nach einer semantischen Eigenschaft der von einer Turingmaschine erkannten Sprache: ob $L(T)=S_2$. Diese Eigenschaft ist nichttrivial, denn manche Maschinen erkennen $S_2$, andere nicht. Daher folgt die Unentscheidbarkeit aus dem Satz von Rice.

== Aufgabe 4

=== a)

*Handschriftliche Lösung (transkribiert):*  
Die Lösung zeichnet einen Graphen mit Variablenknoten $a,b,c$, Klauseldreiecken und Verbindungskanten. In der Skizze sind einige Knoten und Kanten schwer zu unterscheiden.

*Notice (English):* The general idea is the standard 3SAT-to-Vertex-Cover construction, but the sketch alone does not clearly specify all vertices, edges, or the cover-size bound. Those details are needed to define the reduction.

*Korrigierte Lösung:*  
Die Formel hat $n=3$ Variablen und $m=3$ Klauseln. Die Reduktion erzeugt:

- Für jede Variable $x in {a,b,c}$ zwei Knoten $x,not x$, verbunden durch eine Kante.
- Für jede Klausel ein Dreieck aus drei Klauselknoten, je einem für jedes Literal der Klausel.
- Eine Kante von jedem Klauselknoten zu dem Variablenknoten für das komplementäre Literal.

Die Klauseln lauten
$ (a or b or c),  
  (a or b or not c),  
  (a or not b or c). $
Der Zielwert ist
$ k=n+2m=3+2* 3=9. $
Der Graph hat 6 Variablenknoten und 9 Klauselknoten, also 15 Knoten.

=== b)

*Handschriftliche Lösung (transkribiert):*  
„Eingabe: Ist Formel erfüllbar? Ausgabe: Kann man die Knoten des Graphen auswählen? Antwort: für diese Formel erfüllbar, also einen [Vertex Cover] der Größe $3+2*3=9$.“

*Notice (English):* The intended equivalence is right, but the output question should explicitly ask whether there is a vertex cover of size at most $9$. Also, the example’s satisfiability should be supported by an assignment.

*Korrigierte Lösung:*  
Die Eingabefrage lautet: Ist die 3SAT-Formel erfüllbar? Die Ausgabefrage lautet: Besitzt der konstruierte Graph einen Vertex Cover der Größe höchstens $9$?

Die Formel ist erfüllbar, zum Beispiel mit
$ a="wahr",   b="wahr",   c="wahr". $
Daher besitzt der konstruierte Graph einen Vertex Cover der Größe höchstens $9$.

=== c)

*Handschriftliche Lösung (transkribiert):*  
„Eingabe: beliebige Formel; Ausgabe: spezieller Graph. Es muss jedes Beispiel von 3SAT auf ein Beispiel von VC abgebildet werden, da 3SAT als NP-vollständig bekannt ist.“

*Bewertung:* Im Wesentlichen richtig.

*Korrigierte Fassung:*  
Die Reduktion muss für jede Instanz des Ausgangsproblems 3SAT funktionieren. Zu jeder beliebigen 3SAT-Formel muss sie in Polynomialzeit eine entsprechende Instanz von Vertex Cover konstruieren. Die Ausgabegrafen sind dadurch gerade die speziell konstruierten Bilder der jeweiligen Formeln.

== Aufgabe 5

*Handschriftliche Lösung (transkribiert):*  
„Voraussetzung: $P=N P$. Dann $co-P=P$, also $co-N P=N P$. Daher folgt die Kontraposition.“

*Bewertung:* Die Beweisidee ist richtig.

*Korrigierte Fassung:*  
Wir beweisen die Aussage durch Kontraposition. Angenommen, $P=N P$. Da $P$ unter Komplementbildung abgeschlossen ist, gilt $co-P=P$. Also
$ co-N P=co-P=P=N P. $
Damit gilt
$ P=N P => co-N P=N P. $
Die Kontraposition ist
$ co-N P != N P => P != N P. $

== Aufgabe 6

=== a)

*Handschriftliche Lösung (transkribiert):*  
„Setze $v(g_i)=w(g_i)$ für alle $i$ und $V=W=S/2$, wobei $S$ die
Gesamtsumme der PARTITION-Instanz ist. Dann wird KNAPSACK genau dann gelöst,
wenn PARTITION gelöst ist.“

*Notice (English):* Setting value equal to weight is the right idea, but the stated thresholds do not account for the strict wording “Wertsumme über $V$” and “Gewicht unter $W$.” With both thresholds equal to half the total, those strict inequalities cannot both hold at the desired partition point.

*Korrigierte Lösung:*  
Sei eine PARTITION-Instanz $a_1,dots,a_n$ mit Summe $S$. Ist $S$ ungerade, so ist sie eine Nein-Instanz; bilde sie auf eine feste Nein-Instanz von KNAPSACK ab.

Ist $S$ gerade, setze $h=S/2$ und erzeuge für jedes $a_i$ einen Gegenstand $g_i$ mit
$ v(g_i)=w(g_i)=a_i. $
Wegen der strikten Ungleichungen wählen wir
$ V=h-1,   W=h+1. $
Da die Werte und Gewichte ganzzahlig sind, bedeutet Wert $>V$ mindestens $h$, und Gewicht $<W$ höchstens $h$. Weil für jeden Gegenstand Wert und Gewicht gleich sind, kann eine zulässige Teilmenge genau dann existieren, wenn ihre Summe $h$ ist. Das gilt genau dann, wenn die Zahlen partitioniert werden können.

=== b)

*Handschriftliche Lösung (transkribiert):*  
„Nein, denn dieser Spezialfall von Partition (n gleiche Zahlen) ist nicht NP-vollständig. Man kann das in polynomialer Zeit lösen: $n$ gerade: lösbar; $n$ ungerade: nicht lösbar.“

*Notice (English):* The handwritten parity argument is not enough for the stated KNAPSACK special case. The item values are all equal, but their weights may differ. Also, being in $P$ does not unconditionally prove a problem is not NP-complete; that conclusion would require $P!= N P$.

*Korrigierte Lösung:*  
Der Spezialfall liegt in $P$. Sei der gemeinsame positive Wert aller Gegenstände $v$. Bei der strikten Bedingung Wert $>V$ muss eine zulässige Teilmenge mindestens
$ r=floor(V / v) + 1 $
Gegenstände enthalten. Sortiere die Gegenstände nach Gewicht und addiere die Gewichte der $r$ leichtesten. Eine zulässige Teilmenge existiert genau dann, wenn $r<= n$ und diese Summe kleiner als $W$ ist. Das lässt sich in Polynomialzeit berechnen.

Daher liegt das Problem in $P$. Daraus folgt nicht unbedingt, dass es nicht NP-vollständig ist: Ein Problem in $P$ wäre zugleich NP-vollständig, falls $P=N P$. Unter der Annahme $P!= N P$ ist es nicht NP-vollständig.
