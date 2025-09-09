
#import "../lib/prelude.typ": *
#import "_site.typ": *

#show: page.with(
  pages: pages,
  site: site,
)

#html.elem("div", attrs: (class: "banner"))[
  #html.elem("figure")[
    #html.elem("img", attrs: (
      src: "group_1.jpg",
      alt: "PSSL111 group picture 1, with participants appearing from left to right as listed below",
    ))
  ]
]

#html.elem("div", attrs: (class: "banner"))[
  #html.elem("figure")[
    #html.elem("img", attrs: (
      src: "group_2.jpg",
      alt: "PSSL111 group picture 2, with participants appearing from left to right as listed below",
    ))
  ]
]


From left to right:

- João J. Xarez
- Maximilian Petrowitsch
- Nicola Petrov
- Vikraman Choudhury
- Giuseppe Metere
- Nathanael Arkor
- Fabio Pasquali
- Mattei Capucci
- Davide Trotta
- Victoria Vollmer
