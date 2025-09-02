
#import "../lib/prelude.typ": *
#import "_site.typ": *

#show: page.with(
  pages: pages,
  site: site,
)

#show highlight: it => html.elem("mark", it)
#show strike: it => html.elem("s", it)

== Venue

The meeting will take place at #highlight[Aula Ercolani E2] on #link("https://www.unibo.it/")[UniBO] campus.

#html.elem("blockquote")[
  Aula Ercolani E2

  Mura Anteo Zamboni 2B

  40126 Bologna BO
]

The public entrance to the building is on Mura Anteo Zamboni, gate marked 2B.

Note, there are construction works ongoing on that particular street.

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

== Transportation

- *Bologna Guglielmo Marconi Airport*. The quickest way to get from Bologna Airport to the city is to take #link("https://www.marconiexpress.it/en/")[Marconi Express] which will take you to the Bologna Central train station. You could also take a private taxi, which are not usually too expensive, but require a bit of waiting. Uber Black is the only other ride-sharing service available. The airport is also quite small, and tends to get very busy, especially during peak hours and tourist season, so we recommend getting there early to make it through the security checks, if you're catching a flight.

- *Bologna Central Station*. The city center is within a short walking distance from the train station, and well-connected by public transport, see for example, #link("https://citymapper.com/")[Citymapper].

The venue is a short walk from the city center, or easily reachable by public transport.

== Food

We will have coffee breaks during the meeting, and will organise a social aperitivo & dinner on the first day.
The dinner will be at #link("https://maps.app.goo.gl/3dqT9cX9EZZdaBUq6")[Buca San Petronio].

Bologna is known for its rich culinary tradition, and there is no lack of options for traditional cuisine.
However, it can be challenging to find places that cater to specific dietary requirements or preferences, so we have listed some options below, near the venue.

- #html.elem("div")[#strike[
    University canteens
    (vegan options, student discount, #link("https://www.cimasristorazione.com/menu-mense/irnerio-bologna/")[menu]):
  ]]
  - #link("https://maps.app.goo.gl/UqWQPBEQkzf5VU9a7")[#strike[Piazza Puntoni]]
  - #link("https://maps.app.goo.gl/AnDUzdccJ15bcxr87")[#strike[Via Zanolini]]
  - Unfortunately, the university canteens are closed until the 5th.

- #link("https://maps.app.goo.gl/5vHG2nDHLV33wVwu7")[Le Salentine] - Café & lunch place

- #link("https://maps.app.goo.gl/N3DKsehmPLwC44TF9")[Estravagario] - Vegan restaurant

- #link("https://maps.app.goo.gl/X3RZGaeimHy1B5VXA")[Centro Natura] - Vegan & health food restaurant

- #html.elem("div")[Nearby streets with interesting food and drink places:]
  - #link("https://maps.app.goo.gl/Lq64L9jmTp8oGfnu8")[Via Mascarella]
  - #link("https://maps.app.goo.gl/Cq5kXEL55dRLTJcz5")[Via Irnerio]
  - #link("https://maps.app.goo.gl/gZntkz7pMebxp85H6")[Mercato di Piazza Aldrovandi]

- #link("https://maps.app.goo.gl/Zeofn2MkXKHrujiB7")[*Vikraman's list*] of places to eat and drink in Bologna

Feel free to ask us for suggestions and recommendations!
