# Pitchstone OS — ISO Build System

## Goal

Produce a bootable live ISO that:

- Boots into the Pitchstone desktop look (PitchstoneDark + hybrid layout)
- Has the core branding and theme applied out of the box
- Offers Calamares installer with our options
- Includes the ability to install `pitchstone-security-core` easily
- Feels premium from the first second

## Technical Approach

We will use **archiso** (the official Arch Linux ISO build tool). This is the cleanest and most maintainable way to create an Arch-based live ISO.

### High-level structure (planned)

```
iso/
├─ archiso/                  # Customized archiso profile
│   ├─ airootfs/             # Files that land in the live system
│   ├─ efiboot/
│   ├─ syslinux/
│   ├─ packages.x86_64      # Packages included in the live ISO
│   └─ profiledef.sh
├─ build.sh                 # Wrapper script to build the ISO
└─ README.md
```

## Phase 1 ISO Target (Minimum Viable Visual Prototype)

- Boots to Plasma with PitchstoneDark applied
- Basic hybrid layout (top panel + dock or clean taskbar)
- Pitchstone branding visible
- Calamares present and launchable
- BlackArch enable script available
- Core documentation / welcome info

This first ISO does **not** need every security tool pre-installed. It needs to look and feel like Pitchstone.

## Build Requirements (on the build machine)

- Arch Linux (or compatible)
- `archiso` package
- Sufficient disk space and RAM
- Root privileges for the build

## Status

Build system skeleton and strategy defined. Next steps are creating the actual archiso profile and packaging the theme so it can be included in `airootfs`.
