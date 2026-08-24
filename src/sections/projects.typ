#import "../template.typ": *
#section([#fa-code() Projects], colorProjects)
#custombox(colorProjects)[
  #cvproject(
    [#link(
      "https://github.com/ang3lo-azevedo/voltageos-spacewar",
    )[#fa-mobile-alt() Voltage OS Android Contributions]],
    "2025 - Present",
    colorProjects,
  )[
    #list(
      [Developed *device trees* and *kernel patches* for Nothing Phone (1), maintaining AOSP based custom ROM support and system *reliability* for an active community of *20+ users*.],
    )
  ]

  #cvproject(
    [#link("https://github.com/ang3lo-azevedo/root-my-nothing")[#fa-terminal() root-my-nothing]],
    "2026",
    colorProjects,
  )[
    #list(
      [Developed a *temporary root exploit* for Nothing Phone (1) using *CVE-2026-43499 (GhostLock)*.],
    )
  ]

  #cvproject(
    [#link(
      "https://github.com/ang3lo-azevedo/dotfiles",
    )[#fa-folder-open() NixOS Configuration & \ Dotfiles]],
    "2024 - Present",
    colorProjects,
  )[
    #list(
      [*Declarative system configuration* using Nix for reproducible development environments, maintaining and publishing *35+ custom Nix User Repository (NUR) packages* (#link("https://github.com/ang3lo-azevedo/nur-packages")[_link_]).],
    )
  ]

  #cvproject(
    [#link("https://github.com/Ketbome/minepanel")[#fa-cube() Minepanel]],
    "2025 - Present",
    colorProjects,
  )[
    #list(
      [Contributed to a full-stack *SaaS* Minecraft management platform (*Next.js* & *NestJS*), focusing on *internationalization* and *codebase standardization*.],
      [Engineered a complete *multilingual system (EN/ES)* across the stack and resolved critical *TypeScript/ESLint build errors*.],
    )
  ]
]
