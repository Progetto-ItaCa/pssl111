#import "../lib/prelude.typ": *
#import "_site.typ": *

#show: page.with(
  pages: pages,
  site: site,
)

#let event = (time, description, title: none, abstract: none) => {
  html.elem("div")[
    *#time.*
    #if (title != none) [_#description._] else [#description.]
    #if (title != none) {
      html.elem("details")[
        #html.elem("summary")[#title]
        #if (abstract != none) {
          html.elem("blockquote")[#abstract]
        } else [TBA]
      ]
    }
  ]
}

=== September 4th

- #event("10.00 - 11.00", "Meet & greet over coffee")

- #event(
    "11.00 - 12.00",
    "Victoria Vollmer",
    title: "Graded Monads, Graded Multicategories, and Graded Adjoint Logic",
  )

- #event("12.00 - 12.15", "Break")

- #event(
    "12.15 - 12.45",
    "Fabio Pasquali",
    title: "Tabulations and a logical characterisation of relational doctrines of spans",
    abstract: [
      Relational doctrines are introduced in [1, 2] as a functorial description of the calculus of relations.
      They are contravariant functors R from the product of a category C with itself, mapping a pair (A, B) of objects of C to a poset R(A, B) that collects relations from A to B, with an order that generalises the inclusion of relations.
      The operations under which such indexed relations are closed are the basic ones of composition, identity and the converse of a relation.
      In this talk we introduce the notion of (weak) tabulation in the setting of relational doctrines and we use it to give a characterisation of those relational doctrines that are doctrines of spans and of jointly monic spans.
      We compare this result with the characterisation of doctrines of subobjects and of weak subobjects given in [3] and in [4].
      This is a joint work with F. Dagnino (University of Genova).

      References

      [1] F. Dagnino and F. Pasquali, Quotients and extensionality in relational doctrines,
      In Marco Gaboardi and Femke van Raamsdonk, editors, 8th International Conference on Formal Structures for Computation and Deduction, FSCD (2023).

      [2] F. Dagnino and F. Pasquali, Cauchy Completion and the Rule of Unique Choice in Relational Doctrines, in Theory and Applications of Categories (2025).

      [3] B. Jacobs, Categorical Logic and Type Theory (1999).

      [4] M.E. Maietti, F. Pasquali and G. Rosolini Triposes, exact completions, and Hilbert's ε-operator in Tbilisi Mathematical Journal (2017).
    ],
  )

- #event("12.45 - 14.30", "Lunch")

- #event("14.30 - 16.00", "Collaboration session")

- #event(
    "16.00 - 17.00",
    "Giuseppe Metere",
    title: "Coherent and ideal actions",
    abstract: [
      In the framework of ideally exact categories, we introduce a notion of coherent and of ideal action that generalize different aspects of unital actions of rings and algebras.
      Joint work with M. Mancini and F. Piazza.

      #link("https://arxiv.org/abs/2507.06124")
    ],
  )

- #event(
    "17.00 - 17.30",
    "João J. Xarez",
    title: "Very-well-behaved epireflections for categories of models of sketches",
    abstract: [
      Firstly, precise conditions on how to obtain very-well-behaved epireflections are explored and improved from the author's previous papers;
      meaning that, beginning with a monad and a prefactorization system on a category, is produced a reflection with stable units (stronger than semi-left-exactness, also called admissibility in categorical Galois Theory) and an associated monotone-light factorization.
      Then, new results are presented that grant very-well-behaved subreflections from the very-well-behaved reflections induced by an adjunction given by right Kan extensions for presheaves.
      These subreflections are obtained by restricting to the models of a sketch; it is showed finally that the known very-well-behaved reflection of n-categories into n-preorders is an example of this process (being n any positive integer).

      References

      [1] Carboni, A., Janelidze, G., Kelly, G. M., Paré, R. On localization and stabilization for factorization systems. App. Cat. Struct. 5, (1997) 1-58.

      [2] Xarez, J. J. Well-behaved epireflections for Kan extensions, Appl. Categ. Struct. 18 (2010) 219-230.

      [3] Xarez, J. J. Concordant and monotone morphisms, Appl. Categ. Struct. 21 (2013) 393-415.

      [4] Xarez, J. J. The monotone-light factorization for n-categories via n-preorders, https://doi.org/10.48550/arXiv.2310.10475.
    ],
  )

- #event("17.30 - 19.00", "Aperitivo")

- #event("19.30", "Social dinner")

=== September 5th

- #event("09.30 - 10.00", "Coffee")

- #event(
    "10.00 - 11.00",
    "Nathanael Arkor",
    title: "Lexicographic sums and splayed categories",
    abstract: [
      Categories may be presented in several ways: the two most popular presentations involve (1) a set of objects and, for each pair of objects x and y, a set of morphisms C(x, y) from x to y; (2) a set of objects and a set of morphisms.
      These presentations lend themselves to different generalisations of categories: the former to enriched categories, and the latter to internal categories.
      In this talk, I will consider a third presentation of category involving (3) a set of objects and, for each object x, a set C[x] of morphisms from x.
      We show that this presentation lends itself to a new generalisation of category, which we call a splayed category.
      While enriched categories may be defined with respect to monoidal categories, and internal categories with respect to categories with pullbacks, splayed categories may be defined with respect to any category with lexicographic sums.
    ],
  )

- #event("11.00 - 11.15", "Break")

- #event(
    "11.15 - 12.15",
    "Matteo Capucci",
    title: "TBD",
  )

- #event("12.15 - 12.30", "Picture time")

- #event("12.30 - 14.30", "Lunch")

- #event(
    "14.30 - 15.30",
    "Davide Trotta",
    title: "A topos for extended Weihrauch degrees",
    abstract: [
      Weihrauch reducibility is a notion of reducibility between computational problems that is useful to calibrate the uniform computational strength of a multi-valued function.
      It complements the analysis of mathematical theorems done in reverse mathematics, as multi-valued functions on represented spaces can be considered as realizers of theorems in a natural way.
      Despite the rich literature and the relevance of the applications of category theory in logic and realizability, actually there are just a few works starting to study the Weihrauch reducibility from a categorical point of view.
      The main purpose of this talk is to provide a full categorical account to the notion of extended Weihrauch reducibility introduced by A. Bauer, which generalizes the original notion of Weihrauch reducibility.
      In particular, we present a tripos and a topos for extended Weihrauch degrees.
      We start by defining a new tripos, abstracting the notion of extended Weihrauch degrees, and then we apply the tripos-to-topos construction to obtain the desired topos.
      Then we show that the Kleene-Vesley topos is a topos of j-sheaves for a certain Lawvere-Tierney topology over the topos of extended Weihrauch degrees.

      This talk is based on joint work with Samuele Maschio.
    ],
  )

- #event("15.30", "Closing remarks")
