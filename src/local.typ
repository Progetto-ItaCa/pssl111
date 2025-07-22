
#import "../lib/prelude.typ": *
#import "_site.typ": *

#show: page.with(
  pages: pages,
  site: site,
)

#html.elem("article")[
  The meeting will take place in the Bologna campus of
  #link("https://www.unibo.it/")[Alma Mater Studiorum – Università di Bologna].
  The exact venue will be announced soon.
]
