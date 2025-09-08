#import "../lib/prelude.typ": *
#import "_site.typ": *

#show: page.with(
  pages: pages,
  site: site,
)

#show highlight: it => html.elem("mark", it)

The 111th Peripatetic Seminar on Sheaves and Logic (PSSL 111) took place on #highlight[Sep 4th and Sep 5th 2025] in Bologna, Italy.

#html.elem("div", attrs: (class: "banner"))[
  #html.elem("figure")[
    #html.elem("img", attrs: (
      src: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Bologna_Panorama.jpg/1024px-Bologna_Panorama.jpg",
      alt: "Bologna Panorama by Ввласенко, CC BY-SA 3.0 via Wikimedia Commons",
    ))
    #html.elem("figcaption", {
      html.elem("small")[
        #link("https://commons.wikimedia.org/wiki/File:Bologna_Panorama.jpg")[
          Bologna Panorama by Ввласенко, CC BY-SA 3.0 via Wikimedia Commons
        ]
      ]
    })
  ]
]

Note that the dates were not on a weekend, but on a #highlight[Thursday and Friday,] unlike the usual PSSL tradition.
// Since it is outside term time, we expect it will not be a problem for most participants.

#html.elem("blockquote")[
  #link(
    "https://ncatlab.org/nlab/show/Peripatetic+Seminar+on+Sheaves+and+Logic",
  )[PSSL]
  is a long-running series of informal gatherings covering all aspects of category theory and its applications, typically held over a weekend at a university in Europe.
  The first PSSL was held in Oxford, in May 1976.
  This is the 111th PSSL, following meetings in
  #link("https://www.ioc.ee/~amar/pssl110/")[Tallinn],
  #link("https://dutchcats.github.io/PSSL-2024/")[Leiden],
  #link("https://sites.google.com/view/beppemetere/pssl-108")[Terrasini], and
  #link("https://sites.google.com/view/pssl-107-athens?pli=1/")[Athens].
]

// == Registration

// To register for PSSL 111, please fill out the following #highlight[#link("https://forms.gle/xW1DXcghoG7etdAT8")[registration form].]
// There are no registration fees, but we kindly ask that you complete the registration form by August 28th at the latest.

// When registering, you'll be given the option to submit a talk proposal.
// We seek proposals for contributed talks on all aspects of category theory and its applications.
// Talks about work in progress are also warmly welcomed.
// We especially encourage PhD students and young researchers to submit their work.

== Local organizers

- #link("https://matteocapucci.wordpress.com")[Matteo Capucci] (Independent), email: #link("mailto:matteo.capucci@gmail.com")[matteo.capucci\@gmail.com]
- #link("https://vikraman.org")[Vikraman Choudhury] (Università di Bologna), email: #link("mailto:vikraman.choudhury@unibo.it")[vikraman.choudhury\@unibo.it]
//Please feel free to contact us if you have questions or suggestions.
