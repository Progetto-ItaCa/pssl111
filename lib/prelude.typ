#let page-head(
  title,
  css: (),
) = {
  html.elem("head", {
    html.elem("meta", attrs: (charset: "utf-8"))
    html.elem("meta", attrs: (
      name: "viewport",
      content: "width=device-width, initial-scale=1",
    ))
    html.elem("meta", attrs: (
      name: "color-scheme",
      content: "light dark",
    ))
    html.elem("link", attrs: (
      rel: "stylesheet",
      href: "https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.classless.red.min.css",
    ))
    for ss in css {
      html.elem("link", attrs: (rel: "stylesheet", href: ss))
    }
    html.elem("title", title)
  })
}

#let page-nav(
  site,
  pages,
  current,
) = {
  html.elem("nav", {
    html.elem("ul", {
      html.elem("li", {
        html.elem("strong", {
          html.elem("a", attrs: (href: pages.index.href), site)
        })
      })
    })
    html.elem("ul", {
      for (filename, keys) in pages {
        if filename != current {
          html.elem("li", {
            html.elem("a", attrs: (href: keys.href), keys.title)
          })
        } else {
          html.elem("li", {
            html.elem("button", keys.title)
          })
        }
      }
    })
  })
}

#let page(
  site: "Untitled",
  pages: (),
  filename: none,
  css: ("main.css",),
  content,
) = {
  if filename == none {
    filename = sys.inputs.at("filename")
  }

  let name = pages.at(filename).title
  let title = site + " - " + name
  set document(title: title)

  html.elem("html", attrs: (lang: "en"), {
    page-head(title, css: css)
    html.elem("body", {
      html.elem("header", {
        page-nav(site, pages, filename)
      })
      html.elem("main", content)
      html.elem("footer", {
        html.elem("div", {
          html.elem("small")[
            #link("https://github.com/progetto-itaca/pssl111")[site]
            built using #link("https://typst.app")[typst]
          ]
        })
        html.elem("div", {
          html.elem("small")[
            #sys.inputs.at("timestamp")
          ]
        })
      })
    })
  })
}
