#import "../template.typ": *
#section([#fa-server() Homelab & Systems], colorProjects)
#custombox(colorProjects)[
  #cvproject(
    [#link("https://github.com/ang3lo-azevedo/dotfiles")[NixOS Security Workstation & NUR Packages]],
    "2024 - Present",
    colorProjects,
  )[
    #list(
      [Engineered a declarative NixOS security workstation with modular environments for forensics and reverse engineering, maintaining *35+ packages* in NUR (#link("https://github.com/ang3lo-azevedo/nur-packages")[_link_]).],
    )
  ]

  #cvproject(
    [Self-Hosted Infrastructure & Networking],
    "2024 - Present",
    colorProjects,
  )[
    #list(
      [Administering a Debian-based homelab running Docker and Portainer to deploy and manage self-hosted privacy services (Nextcloud, Immich, SearXNG).],
      [Configured an NGINX reverse proxy for secure external access and implemented an automated NAS backup strategy.]
    )
  ]
]
