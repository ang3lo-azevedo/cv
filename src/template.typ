#import "@preview/fontawesome:0.5.0": *

#let colorEdu = rgb("#1e3a8a")
#let colorExp = rgb("#1d4ed8")
#let colorCTF = rgb("#ea580c")
#let colorAwards = rgb("#d97706")
#let colorLangs = rgb("#475569")
#let colorTools = rgb("#115e59")
#let colorPlatforms = rgb("#1d4ed8")
#let colorProjects = rgb("#115e59")
#let colorSpokenLangs = rgb("#475569")
#let secondary = rgb("#334155")
#let lightgray = rgb("#64748b")

#let section(title, color) = {
  text(size: 12pt, weight: "bold", fill: color)[#title]
}

#let cventry(title, date, location, color, content) = {
  block(width: 100%, breakable: false)[
    #text(fill: color, weight: "bold")[#title] #h(1fr) #text(fill: lightgray, style: "italic", size: 9pt)[#date] \
    #text(style: "italic", size: 9pt)[#location]
    #content
  ]
}

#let cvproject(title, date, color, content) = {
  block(width: 100%, breakable: false)[
    #text(fill: color, weight: "bold")[#title] #h(1fr) #text(fill: lightgray, style: "italic", size: 9pt)[#date] \
    #content
  ]
}

#let custombox(color, content) = {
  box(
    stroke: 1pt + color,
    radius: 3mm,
    inset: 6pt,
    width: 100%,
  )[#content]
}

#let conf(body) = {
  set page(
    paper: "a4",
    margin: 0.9cm,
  )
  set text(
    font: ("Roboto", "Arial", "Liberation Sans"),
    size: 9pt,
    lang: "en",
    fallback: true,
  )
  set par(spacing: 0.45em)
  body
}
