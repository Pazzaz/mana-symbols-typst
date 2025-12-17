#import "@local/mana-symbols:0.1.0": mana

= #mana([{u/g}b5], sort: false) We can have mana in titles #mana([5b{u/g}], sort: false)
We can also have mana in paragraphs, e.g. green mana #mana[g] or black and red hybrid mana #mana[b/r]. Or maybe we want to have the mana cost of #link("https://scryfall.com/card/fdn/244/progenitus", "Progenitus"):
#mana[{W}{W}{U}{U}{B}{B}{R}{R}{G}{G}].
Now that's a long mana cost.

We can also include mana symbols in equations:
$
sum_(k=1)^6 #mana[G/R] = 3 times (#mana[G] + #mana[R])
$

= Table of examples

#table(
  columns: (auto, auto, auto),
  table.header(
      [*Mana type*], [*Typst code*], [*Rendered*]
  ),
  [Green],
  [`mana[g]`],
  mana[g],
  [Green or white hybrid],
  [`mana[g/w]`],
  mana[g/w],
  [5 generic and 1 blue],
  [`mana[5u]`],
  mana[5u],
  [5 generic or blue hybrid],
  [`mana[5/u]`],
  mana[5/u],
  [Cost of #link("https://scryfall.com/card/dmu/192/ajani-sleeper-agent", "Ajani, Sleeper Agent")],
  [`mana[1g{g/w/p}w]`],
  mana[1g{g/w/p}w],
  [Red and snow],
  [`mana[rs]`],
  mana[rs],
  [Snow and red],
  [`mana([sr], sort: false)`],
  mana([sr], sort: false),
)
