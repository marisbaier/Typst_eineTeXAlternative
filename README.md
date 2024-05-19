# Typst, eine TeX Alternative
In diesem Workshop möchte ich euch eine moderne Alternative zu LaTeX ans Herz legen: [https://typst.app](https://typst.app)

Typst ist ein neues markup-basiertes Schriftsatzsystem, das so leistungsfähig wie LaTeX, aber viel einfacher zu erlernen und zu benutzen ist.

![](https://github.com/marisbaier/Typst_eineTeXAlternative/blob/main/mockup.gif)

Typst kompiliert annähernd instantan, indem nicht das gesamte Dokument immer neu kompiliert werden muss. Typst wird [open-source](https://github.com/typst/typst) in Rust geschrieben.

## Intro
1. Besuche den [web editor](https://typst.app) und kreiere eine blanke Datei \
   (oder installiere das VScode plugin)
3. Kreiere eine Überschrift mit `=`
4. Man schreibt math mit `$`-Zeichen: 
   ```typst
   $math$     // -> inline math
   $ math $   // -> centered math
   ```
   Finde heraus wie man einen Bruch schreibt.
6. Schreibe `\mathbb{R}` mit `RR` und `\text{blablabla}` mit `"blablabla"` (im math-mode)
8. Kreiere ein align environment (frag gerne nach, wenn du Hilfe brauchst)
9. Probiere aus: `=>, ==>, ->, #emoji.duck, =^!, sin(pi), exp(0), #v(1cm)`
12. Füge ein Bild ein (z.B. mit strg+v)
<p align="center">
 <img alt="Example" width="900" src="https://user-images.githubusercontent.com/17899797/228031796-ced0e452-fcee-4ae9-92da-b9287764ff25.png"/>
</p>

## Aufgabe 2
1. Schreibe eine Matrix mit
    ```typst
    $
    mat(
       a,b,c;
       d,e,f;
       g,h,j
    )
    $
    ```
2. Kreiere einen makro:
   ```typst
   #let bsp = $overline(sigma)$
   ```
3. Nutze diesen Makro in deiner Datei
4. Rotiere das ganze Dokument um 1 Grad, um jede/n, der/die das Dokument ließt, maximal abzufucken mit:
   ```typst
   #rotate(1deg)[
      blablabla
   ]
   ```
5. Schreibe code Blöcke mit:
   ```rust
   ```rust
   fn main() {
    println!("Hello World!");
   }
   ``'
   ```
6. Schreibe roten text oder Formeln mit:
   ```typ
   #text(red)[lalalalalala]
   ```
7. Setze die Sprache auf Deutsch:
    ```typst
   #set text(
      lang: "de"
   )
   ```
   Jetzt werden Abbildungen mit "Abbildung x" und nicht "Figure x" referenziert. Damit kann man btw. auch die Schriftart verändern `font: "New Computer Modern"`.
8. Kreiere und referenziere ein Label mit `<label>` und `@label`, z.B. hinter einer Überschrift oder einer Gleichung
   ```typst
   // hint:
   #set heading(numbering: "1.")
   #set math.equation(numbering: "(1)")
   #set text(lang: "de")
   ```
   Typst unterstützt Bibtex. You can read more on this [here](https://typst.app/docs/reference/model/bibliography/).
9. Verlege deine `#set` und `#let` Befehle in eine seperate Datei und importiere sie mit `#import` \
   (Hier in diesem git ist ein Ordner mit einem Beispiel. Du kannst auch einfach den Inhalt beider Dateien rüberkopieren)

## Web-Editor und weitere markdown shenanigans
1. Wähle Text aus und drücke Strg+b (probiere auch strg+i)
2. Wähle Text aus und drücke " (probiere auch Klammer auf)
3. Wähle Text aus und drücke alt+shift+a
4. alt+shift+arrowdown
6. alt+arrowdown
5. Wähle mehrere Zeilen aus und drücke alt+shift+arrowdown
7. Wähle mehrere Zeilen aus und drücke alt+arrowdown
8. Kreiere eine Auflistung mit `+` oder bullet-points mit `-`
   ```typst
   + In Aufgabe 1 sehen wir sofort:
     $ sigma=12 $
   + Aufgabe 2 machen wir aus Protest nicht

   Manually numbered:
   2. What is the first step?
   5. I am confused.
   +  Moving on ...
   ```
   You can easily switch all your enumerations to a different numbering style with a set rule.
   ```typst
   #set enum(numbering: "a)")
   ```
9. 

## Andere Dinge
1. Guck mal [hier](https://typst.app/docs/reference/symbols/sym/)
2. Packages kann man durchstöbern im [typst-universe](https://typst.app/universe/).
3. Für Typst existiert ein Zeichenpaket, wie Tikz, namens "Cetz", was ein rekursives Akronym für "Cetz, Ein Typst Zeichenpaket" ist :D. Importiere Cetz mit:
   ```typ
   #import "@preview/cetz:0.2.2"

   #cetz.canvas({
     import cetz.draw: *
     // Your drawing code goes here
   })
   ```
4. Makros können auch Argumente nehmen:
   ```typst
   #let dotp(a,b) = $angle.l #a,#b angle.r$
   ```
6. 
