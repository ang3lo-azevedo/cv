#import "@preview/fontawesome:0.5.0": *

#let colorEdu = rgb("#380c7a")
#let colorExp = rgb("#19315c")
#let colorCTF = rgb("#480a93")
#let colorAwards = rgb("#c47001")
#let colorLangs = rgb("#22819e")
#let colorTools = rgb("c0392b")
#let colorPlatforms = rgb("4b558c")
#let colorProjects = rgb("#db1f2c")
#let colorSpokenLangs = rgb("96556e")
#let secondary = rgb("404040")
#let lightgray = rgb("808080")

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
