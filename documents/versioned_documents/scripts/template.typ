// Minimal pandoc template: the default one sets the page before our style does, which leaves a blank first page.
#set terms(hanging-indent: 1.5em)
#set table(inset: 6pt, stroke: none)
#let horizontalRule = line(start: (25%, 0%), end: (75%, 0%))
#show figure.where(kind: table): set figure.caption(position: top)
#show figure.where(kind: image): set figure.caption(position: bottom)
$if(highlighting-definitions)$
$highlighting-definitions$
$endif$
$for(include-before)$
$include-before$
$endfor$
$if(toc)$
#outline(title: [$toc-title$], depth: $toc-depth$)
$endif$
$body$
