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
      html.elem("li", {
        html.elem(
          "a",
          attrs: (
            href: "#",
            title: "Toggle theme",
            onclick: "document.documentElement.setAttribute('data-theme', document.documentElement.getAttribute('data-theme') === 'light' ? 'dark' : 'light'); return false;",
          ),
          {
            html.elem(
              "svg",
              attrs: (
                xmlns: "http://www.w3.org/2000/svg",
                aria-hidden: "true",
                width: "1em",
                height: "1em",
                fill: "currentColor",
                stroke-linecap: "round",
                class: "theme-toggle__classic",
                viewBox: "0 0 32 32",
              ),
              {
                html.elem("clipPath", attrs: (id: "theme-toggle__classic__cutout"), {
                  html.elem("path", attrs: (d: "M0-5h30a1 1 0 0 0 9 13v24H0Z"))
                })
                html.elem("g", attrs: (clip-path: "url(#theme-toggle__classic__cutout)"), {
                  html.elem("circle", attrs: (cx: "16", cy: "16", r: "9.34"))
                  html.elem("g", attrs: (stroke: "currentColor", stroke-width: "1.5"), {
                    html.elem("path", attrs: (d: "M16 5.5v-4"))
                    html.elem("path", attrs: (d: "M16 30.5v-4"))
                    html.elem("path", attrs: (d: "M1.5 16h4"))
                    html.elem("path", attrs: (d: "M26.5 16h4"))
                    html.elem("path", attrs: (d: "m23.4 8.6 2.8-2.8"))
                    html.elem("path", attrs: (d: "m5.7 26.3 2.9-2.9"))
                    html.elem("path", attrs: (d: "m5.8 5.8 2.8 2.8"))
                    html.elem("path", attrs: (d: "m23.4 23.4 2.9 2.9"))
                  })
                })
              },
            )
          },
        )
      })
    })
  })
}

/*
<button
  class="theme-toggle"
  type="button"
  title="Toggle theme"
  aria-label="Toggle theme"
>
  <svg
    xmlns="http://www.w3.org/2000/svg"
    aria-hidden="true"
    width="1em"
    height="1em"
    fill="currentColor"
    stroke-linecap="round"
    class="theme-toggle__classic"
    viewBox="0 0 32 32"
  >
    <clipPath id="theme-toggle__classic__cutout">
      <path d="M0-5h30a1 1 0 0 0 9 13v24H0Z" />
    </clipPath>
    <g clip-path="url(#theme-toggle__classic__cutout)">
      <circle cx="16" cy="16" r="9.34" />
      <g stroke="currentColor" stroke-width="1.5">
        <path d="M16 5.5v-4" />
        <path d="M16 30.5v-4" />
        <path d="M1.5 16h4" />
        <path d="M26.5 16h4" />
        <path d="m23.4 8.6 2.8-2.8" />
        <path d="m5.7 26.3 2.9-2.9" />
        <path d="m5.8 5.8 2.8 2.8" />
        <path d="m23.4 23.4 2.9 2.9" />
      </g>
    </g>
  </svg>
</button>
*/

/*
<button class="outline" onclick="document.documentElement.setAttribute('data-theme', document.documentElement.getAttribute('data-theme') === 'light' ? 'dark' : 'light')">                   <div style="width:24px;height:24px;"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-lamp-desk"><path d="m14 5-3 3 2 7 8-8-7-2Z"></path><path d="m14 5-3 3-3-3 3-3 3 3Z"></path><path d="M9.5 6.5 4 12l3 6"></path><path d="M3 22v-2c0-1.1.9-2 2-2h4a2 2 0 0 1 2 2v2H3Z"></path></svg></div>
</button>
*/


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
