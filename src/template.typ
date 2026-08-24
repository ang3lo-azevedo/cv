#import "@preview/fontawesome:0.5.0": *

#let colorEdu = rgb("3476b0")
#let colorExp = rgb("4ca05f")
#let colorCTF = rgb("e66e32")
#let colorAwards = rgb("864a9d")
#let colorLangs = rgb("2a8076")
#let colorTools = rgb("c0392b")
#let colorPlatforms = rgb("4b558c")
#let colorProjects = rgb("58738c")
#let colorSpokenLangs = rgb("96556e")
#let secondary = rgb("404040")
#let lightgray = rgb("808080")

#let section(title, color) = {
  v(4pt)
  text(size: 12pt, weight: "bold", fill: color)[#title]
  v(1pt)
}

#let cventry(title, date, location, color, content) = {
  block(width: 100%, breakable: false)[
    #text(fill: color, weight: "bold")[#title] #h(1fr) #text(fill: lightgray, style: "italic", size: 9pt)[#date] \
    #text(style: "italic", size: 9pt)[#location]
    #content
    #v(2pt)
  ]
}

#let cvproject(title, date, color, content) = {
  block(width: 100%, breakable: false)[
    #text(fill: color, weight: "bold")[#title] #h(1fr) #text(fill: lightgray, style: "italic", size: 9pt)[#date] \
    #content
    #v(1pt)
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
    margin: 1cm,
  )
  set text(
    font: ("Roboto", "Arial", "Liberation Sans"),
    size: 10pt,
    lang: "en",
    fallback: true,
  )
  set par(spacing: 0.55em)
  body
}
