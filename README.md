# Pitchstone OS

**Security-first. Desktop-obsessed. Built to compete.**

Pitchstone OS is a modern Linux distribution that combines the offensive and defensive power of Kali-style tooling with the rolling modernity of Arch, delivered through a heavily refined **hybrid KDE Plasma 6** desktop designed to feel more polished, fluid, and enjoyable than both macOS and Windows.

---

## Vision

Most security-focused distributions look and feel like tools.  
Most beautiful distributions are weak on security tooling.

**Pitchstone aims to do both at a high level.**

- **Security DNA**: Curated modern penetration testing, forensics, and hardening toolkit (BlackArch repository + our meta-packages)
- **Daily Driver Quality**: A desktop experience power users actually want to live in
- **Hybrid Interface**: Best of macOS fluidity + Windows productivity using **native Plasma 6 panels only**
- **Modern Foundation**: Arch base + carefully layered security tooling

---

## Current Status

- [x] Vision & architecture locked
- [x] Design system defined
- [x] Base strategy: Arch + BlackArch + Pitchstone meta-packages
- [x] Hybrid Plasma layout direction (native panels only)
- [x] `PitchstoneDark` color scheme
- [x] `pitchstone-security-core` PKGBUILD (official Arch packages only)
- [x] Menu organization plan
- [x] LICENSE set to GPL-3.0-or-later
- [ ] archiso profile + minimal live package list
- [ ] First successful mkarchiso build that boots to a desktop in QEMU

---

## Technical Direction

| Layer              | Choice                                      |
|--------------------|---------------------------------------------|
| **Base**           | Arch Linux                                  |
| **Security Tools** | BlackArch repository + curated meta-packages |
| **Desktop**        | KDE Plasma 6 (native panels only)           |
| **Look & Feel**    | Hybrid Mac/Windows with glass & depth       |
| **Filesystem**     | Btrfs + snapshots                           |
| **Package Mgmt**   | pacman + our meta-packages                  |

---

## Design Pillars

1. **Sexy by default** — Glass, depth, refined typography, excellent dark mode
2. **User-friendly** — Sensible defaults, low friction
3. **Powerful** — Full security tool access without fighting the desktop
4. **Cohesive** — One design language across everything
5. **Fast** — Performance is a first-class feature

---

## Project Structure

```
Pitchstone-OS/
├─ docs/           # Vision, roadmap, design system, base strategy, plasma layout
├─ packaging/      # Meta-packages, menu, calamares notes
├─ themes/         # Plasma color schemes, wallpapers, branding
├─ scripts/        # Helper scripts (enable-blackarch.sh)
└─ iso/            # archiso build system (in progress)
```

---

**License**: GPL-3.0-or-later  
**Pitchstone OS** — Hard as stone. Sharp as a blade. Beautiful enough to live on.
