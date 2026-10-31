#let accent = rgb("#A8563C")

#set text(lang: "fr", font: ("Avenir Next", "Helvetica Neue", "Arial", "Liberation Sans"))
#set page(width: auto, height: auto, margin: 1.5cm, numbering: none)
#set image(fit: "contain")
#show heading.where(level: 1): it => block(below: 1em, text(size: 24pt, weight: "bold", fill: accent, it.body))
