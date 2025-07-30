
#import "../lib/prelude.typ": *
#import "_site.typ": *

#show: page.with(
  pages: pages,
  site: site,
)

#show highlight: it => html.elem("mark", it)

== Venue

The meeting will take place at #highlight[Aula Ercolani E2] on #link("https://www.unibo.it/")[UniBO] campus.

#html.elem("blockquote")[
  Aula Ercolani E2

  Mura Anteo Zamboni 2B

  40126 Bologna BO
]

#html.elem("figure")[
  #html.elem(
    "iframe",
    attrs: (
      width: "425",
      height: "350",
      src: "https://www.openstreetmap.org/export/embed.html?bbox=11.355459094047548%2C44.49524643095179%2C11.357245445251467%2C44.498340062416915&layer=mapnik&marker=44.49679326720048%2C11.356352269649506",
      // style: "border: 1px solid black",
    ),
  )[]
  #html.elem("figcaption")[
    #html.elem("small")[
      #link("https://www.openstreetmap.org/?mlat=44.496793&mlon=11.356352#map=19/44.496793/11.356352")[View Larger Map]
      #sym.dot.c
      #link("https://maps.app.goo.gl/RQZRDoHsvpsoVGq67")[Google Maps]
      #sym.dot.c
      #link("https://w3w.co/dreamer.comet.margin")[dreamer.comet.margin]
    ]
  ]
]

The public entrance to the building is on Mura Anteo Zamboni, gate marked 2B.
