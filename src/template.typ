#import "@preview/fontawesome:0.5.0": *

#let primary = rgb("#1e40af")
#let colorEdu = rgb("#1e40af")
#let colorExp = rgb("#1d5ea8")
#let colorCTF = rgb("#c2410c")
#let colorAwards = rgb("#b45309")
#let colorLangs = rgb("#475569")
#let colorTools = rgb("#0f766e")
#let colorPlatforms = rgb("#1d5ea8")
#let colorProjects = rgb("#0f766e")
#let colorSpokenLangs = rgb("#475569")
#let secondary = rgb("#334155")
#let lightgray = rgb("#64748b")
#let darktitle = rgb("#0f172a")

#let section(title, color) = {
  block(width: 100%, below: 4.0pt)[
    #text(size: 11pt, weight: "bold", fill: color)[#title]
    #v(1.5pt)
    #line(length: 100%, stroke: 1pt + color)
  ]
}

#let cventry(title, date, location, color, content) = {
  block(width: 100%, breakable: false, below: 10.5pt)[
    #text(fill: color, weight: "bold")[
      #show link: set text(fill: color)
      #title
    ] #h(1fr) #text(fill: lightgray, style: "italic", size: 8.5pt)[#date] #linebreak()
    #text(style: "italic", size: 8.5pt, fill: rgb("#475569"))[#location]
    #content
  ]
}

#let cvproject(title, date, color, content) = {
  block(width: 100%, breakable: false, below: 10.5pt)[
    #text(fill: color, weight: "bold")[
      #show link: set text(fill: color)
      #title
    ] #h(1fr) #text(fill: lightgray, style: "italic", size: 8.5pt)[#date] #linebreak()
    #content
  ]
}

#let custombox(color, content) = {
  block(
    width: 100%,
    inset: (x: 0pt, y: 0pt),
  )[#content]
}

#let conf(body) = {
  set page(
    paper: "a4",
    margin: (x: 0.80cm, top: 0.65cm, bottom: 0.65cm),
  )
  set text(
    font: ("Noto Sans", "DejaVu Sans"),
    size: 9.0pt,
    lang: "en",
    fallback: true,
  )
  set par(spacing: 0.38em)
  body
}
