// ===========================================================================
// Assets & Colors
// ===========================================================================
#let _assets            = "assets"
#let art                = _assets + "/art"
#let images             = _assets + "/images"
#let layout             = _assets + "/layout"
#let maps               = _assets + "/maps"
#let svgs               = _assets + "/glyphs"

#let goldenbrown        = rgb("#996614")
#let darkcandyapplered  = rgb("#a40000")
#let antiquewhite       = rgb("#f8ebd4")
#let bistre             = rgb("#3d2b1f")

// ===========================================================================
// Glyphs / Icons
// ===========================================================================
#let svg(name, height: 9.5pt) = {
  let drop = if name in ("bronze", "silver", "golden", "azure") { -10% } else { -15% }
  box(baseline: -drop)[
    #image(svgs + "/" + name + ".svg", height: height)
  ]
}

// ===========================================================================
// Master Mission Book Page Setup
// ===========================================================================
#let homm3-mission-book(page-number: "45", body) = {
  set page(
    paper: "a4",
    margin: (top: 2.43cm, bottom: 3.0cm, left: 1.5cm, right: 1.5cm),
    background: [
      #image(layout + "/tausta.png", width: 100%, height: 100%, fit: "stretch")
      #place(bottom + left, image(layout + "/bottom.png", width: 100%, height: 44pt, fit: "stretch"))
      #place(bottom + center, dy: -1.0cm)[
        #text(
          font: ("New Computer Modern", "serif"),
          size: 11pt,
          weight: "bold",
          fill: bistre,
        )[#page-number]
      ]
    ]
  )

  set text(
    font: ("New Computer Modern", "Latin Modern Roman", "serif"),
    size: 11.5pt,
    fill: black,
    lang: "en",
    hyphenate: true, // Allows words to hyphenate across lines like LaTeX
  )
  set par(
    spacing: 11.5pt, 
    leading: 0.65em,
    justify: true,   // Full justification
  )

  show link: set text(fill: goldenbrown)

  set list(
    marker: box(baseline: 15%)[
      #image(layout + "/listdot.png", width: 0.8em)
    ],
    indent: 1.2em,       // <--- Indents the bullet from the column margin
    body-indent: 0.55em, // <--- Gap between bullet and text
    spacing: 10pt,        // <--- Space between items in the list
  )

  // Adds vertical breathing room above and below lists (matching LaTeX \topsep):
  show list: set block(above: 9pt, below: 9pt)

  body
}

// Banner with lines: 2 as default for multi-line scenario headers
#let addscenariosection(
  campaign-name,
  scenario-name,
  hero-image,
  lines: 2,
) = {
  let banner-height = 4.32cm

  v(-1.2cm)

  block(
    width: 100%,
    height: banner-height,
    breakable: false,
    [
      #place(
        top + left,
        dx: -0.5cm,
        image(
          layout + "/section_heading.png",
          width: 100% + 1.0cm,
          height: banner-height,
          fit: "stretch",
        )
      )

      #if hero-image != none {
        place(left + horizon, dx: 0.85cm)[
          #image(hero-image, width: 2.43cm, height: 3.1cm, fit: "contain")
        ]
      }

      #place(center + horizon, dx: 1.1cm)[
        #align(center)[
          #text(
            font: ("Liberation Serif", "Times New Roman", "serif"),
            size: 10pt,
            weight: "bold",
            fill: antiquewhite,
            tracking: 0.22em,
          )[#upper(campaign-name)] \
          #v(3pt)
          #text(
            font: ("Liberation Serif", "Times New Roman", "serif"),
            size: 20.48pt,
            weight: "bold",
            fill: antiquewhite,
            tracking: 0.06em,
          )[#upper(scenario-name)]
        ]
      ]
    ]
  )

  v(0.6cm)
}

// 2. Section title matching LaTeX \subsection* with parskip:
//    LaTeX \subsection* adds ~20pt above and ~8pt below, and cannot orphan.
#let section-title(title) = block(
  above: 2.3em,
  below: 1.7em,
  breakable: false,
  text(
    font: ("New Computer Modern", "serif"),
    weight: "bold",
    size: 14pt,
  )[#upper(title)]
)