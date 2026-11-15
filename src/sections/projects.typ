#import "../template.typ": *
#section([#fa-code() Projects], colorProjects)
#custombox(colorProjects)[
  #cvproject(
    [#link("https://github.com/ang3lo-azevedo/root-my-nothing")[root-my-nothing (Android Vulnerability Tooling)]],
    "2026",
    colorProjects,
  )[
    #list(
      [Ported the CVE-2026-43499 (GhostLock) futex vulnerability to Nothing Phone (1), extracting kernel struct offsets with pahole and building an Android NDK and Kotlin app to deploy KernelSU.],
    )
  ]

  #cvproject(
    [FACT (Forensic Artifact Creation Toolkit)],
    "2026",
    colorProjects,
  )[
    #list(
      [Engineered an automated simulation framework (Python, Packer, QEMU) to generate multi-OS forensic labs, forging realistic attack timelines (Registry, BitLocker, memory dumps) without evidence contamination for *100+ students*.],
    )
  ]

  #cvproject(
    [#link("https://github.com/ang3lo-azevedo/voltageos-spacewar")[Voltage OS Android & Kernel Trees]],
    "2025 - Present",
    colorProjects,
  )[
    #list(
      [Maintained Linux 5.4 kernel and device trees for Nothing Phone (1), configuring custom builds, KSU-SUSFS root-hiding integration, and hardware abstraction (HAL) for an active community of *20+ users*.],
    )
  ]

  #cvproject(
    [#link("https://github.com/ang3lo-azevedo/samsung-galaxy-book-linux-fixes")[Samsung Galaxy Book Linux Hardware Fixes]],
    "2026",
    colorProjects,
  )[
    #list(
      [Contributed to Linux hardware support on Galaxy Book laptops by automating Secure Boot module signing via Kbuild, developing systemd runtime services, and building userspace camera controls.],
    )
  ]

  #cvproject(
    [Console Binary Reverse Engineering (Switch)],
    "2026",
    colorProjects,
  )[
    #list(
      [Reverse-engineered ARM64 binaries (Mario Kart 8 Deluxe) in IDA Pro, isolating NVN capability checks and using pwndbg over an Atmosphere GDB stub to hijack the UI state machine.],
    )
  ]

  #cvproject(
    [#link("https://github.com/ang3lo-azevedo/dotfiles")[NixOS Security Workstation & NUR Packages]],
    "2024 - Present",
    colorProjects,
  )[
    #list(
      [Engineered a declarative NixOS security workstation with modular environments for forensics and reverse engineering, maintaining *35+ packages* in NUR (#link("https://github.com/ang3lo-azevedo/nur-packages")[_link_]).],
    )
  ]
]
