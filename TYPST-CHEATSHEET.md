# Typst cheat sheet

This is a quick reference for editing the exercise template in VS Code with Tinymist.

## Preview and compile

- Save the file with `Ctrl+S`.
- Open the Command Palette with `Ctrl+Shift+P`.
- Run `Typst Preview`.
- If the preview is blank, open **View → Problems** and fix the first compiler error.
- A Typst file normally ends in `.typ`.

## Basic text

```typst
Normal text.

_Italic text_

#text(weight: "bold")[Bold text]

#text(size: 14pt)[Larger text]

#text(size: 14pt, weight: "bold")[Large bold text]
```

Typst uses a blank line to start a new paragraph. Most punctuation can be typed normally.

## Headings

```typst
= Main heading
== Smaller heading
=== Even smaller heading
```

The number of `=` characters controls the heading level.

## Lists

```typst
- First item
- Second item

+ Numbered item
+ Another numbered item
```

## Math

Use dollar signs for inline or displayed mathematics:

```typst
Inline math: $x^2 + y^2 = z^2$

$ integral_0^1 x^2 dif x $
```

Common examples:

```typst
$x^2$       // superscript
$x_1$       // subscript
$sqrt(x)$   // square root
$a / b$     // fraction
$in$        // belongs to
$arrow.r$   // right arrow
```

## Line breaks and spacing

```typst
First line \
Second line

#v(8mm)       // vertical space
#h(5mm)       // horizontal space
#pagebreak()  // start a new page
```

## Boxes and answer areas

The template defines this helper:

```typst
#answer-space(height: 30mm, prompt: "Start here ...")
```

Change `height` to make the answer area taller or shorter. Change `prompt` to add a short, non-solution hint.

Example:

```typst
= 1)

- [a)] #answer-space(
  height: 40mm,
  prompt: "Write your definition here ..."
)
```

## Tables

```typst
#table(
  columns: 3,
  [State], [Read], [Action],
  [q0], [|], [Move right],
  [q1], [blank], [Stop],
)
```

## Page setup

```typst
#set page(
  paper: "a4",
  margin: (top: 18mm, bottom: 18mm, left: 20mm, right: 20mm),
)

#set text(size: 10.5pt)
```

## Comments

```typst
// This is a one-line comment.
```

Comments are ignored when the document is compiled.

## Common errors

### Typst interprets text as code

Some characters have special meaning. For example, `$...$` is math mode and `#...` starts a command. Put literal special text in quotes or avoid the special syntax.

```typst
arbeitet(x)       // may be interpreted as code
"arbeitet(x)"     // literal text
```

### Function arguments

When a helper uses a named argument, include the argument name:

```typst
#answer-space(height: 25mm)
```

### Unbalanced brackets

Every `[` needs a matching `]`, and every `(` needs a matching `)`.

## Useful workflow

1. Duplicate the template before making major changes.
2. Replace the exercise numbers and labels.
3. Adjust each `height`.
4. Replace the short prompts with neutral writing hints.
5. Save and check the Tinymist preview.
6. Use **View → Problems** for compiler diagnostics.
