#import "src/lib.typ": mana

= #mana([{u/g}b5], sort: false) We can have mana in titles #mana([5b{u/g}], sort: false)
We can also have mana in paragraphs, e.g. green mana #mana[g] or black and red hybrid mana #mana[b/r]. Or maybe we want to have the mana cost of Progenitus:
#mana[{W}{W}{U}{U}{B}{B}{R}{R}{G}{G}].
Now that's a long mana cost.

We can also include mana symbols in equations:
$
sum_(k=1)^6 #mana[G/R] = 3 times (#mana[G] + #mana[R])
$