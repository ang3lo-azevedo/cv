#import "../template.typ": *
#section([#fa-code() #h(4pt) Projects], colorProjects)
#custombox(colorProjects)[
  #cvproject(
    [#link(
      "https://github.com/ang3lo-azevedo/voltageos-spacewar",
    )[#fa-mobile-alt() #h(4pt) Voltage OS Android Contributions]],
    "2025 - Present",
    colorProjects,
  )[
    #list(
      [Developed *device trees* and *kernel patches* for Nothing Phone (1). Maintained AOSP based custom ROM support.],
    )
  ]

  #cvproject(
    [#link("https://github.com/ang3lo-azevedo/root-my-nothing")[#fa-terminal() #h(4pt) root-my-nothing]],
    "2026",
    colorProjects,
  )[
    #list(
      [Developed a *temporary root exploit* for Nothing Phone (1) using *CVE-2026-43499 (GhostLock)*.]
    )
  ]

  #cvproject(
    [#link(
      "https://github.com/ang3lo-azevedo/dotfiles",
    )[#fa-folder-open() #h(4pt) NixOS Configuration & \ Dotfiles]],
    "2024 - Present",
    colorProjects,
  )[
    #list(
      [*Declarative system configuration* using Nix for reproducible development environments, and published custom *Nix User Repository (NUR)* packages (#link("https://github.com/ang3lo-azevedo/nur-packages")[_link_]).],
    )
  ]

  #cvproject(
    [#link("https://github.com/Ketbome/minepanel")[#fa-cube() #h(4pt) Minepanel]],
    "2025 - Present",
    colorProjects,
  )[
    #list(
      [Full-stack Minecraft management platform with *Next.js frontend*, *NestJS backend*.],
      [Implemented *internationalization system*, *Docker deployment*, and *real-time server management*.],
    )
  ]
]
