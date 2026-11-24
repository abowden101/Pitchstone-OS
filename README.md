# Pitchstone OS

**Security-first. Desktop-obsessed. Built to compete.**

Pitchstone OS is a modern Linux distribution that combines the offensive and defensive power of Kali-style tooling with the rolling modernity of Arch, delivered through a heavily refined **hybrid KDE Plasma** desktop designed to feel more polished, fluid, and enjoyable than both macOS and Windows.

---

## Vision

Most security-focused distributions look and feel like tools.  
Most beautiful distributions are weak on security tooling.

**Pitchstone aims to do both at a high level.**

- **Security DNA**: Curated modern penetration testing, forensics, and hardening toolkit (powered by BlackArch + our meta-packages)
- **Daily Driver Quality**: A desktop experience power users actually want to live in
- **Hybrid Interface**: Best of macOS fluidity + Windows productivity, executed with glass, depth, and precision
- **Modern Foundation**: Arch base + carefully layered security tooling

---

## Current Status (Phase 0 nearly complete)

- [x] Vision & architecture locked
- [x] Design system defined (colors, glass, motion, typography)
- [x] Base strategy: Arch + BlackArch + Pitchstone meta-packages
- [x] Hybrid Plasma layout direction (Dock + Taskbar profiles)
- [x] `PitchstoneDark` color scheme created
- [x] Security meta-packages designed (`pitchstone-security-core` etc.)
- [x] Clean menu organization planned
- [x] Wallpaper series direction + first concepts generated

---

## Technical Direction

| Layer              | Choice                                      |
|--------------------|---------------------------------------------|
| **Base**           | Arch Linux                                  |
| **Security Tools** | BlackArch repository + curated Pitchstone meta-packages |
| **Desktop**        | KDE Plasma 6 (heavily refined)              |
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
├─ docs/           # Vision, roadmap, design system, base strategy
├─ packaging/      # Meta-packages + menu organization
├─ themes/
│   ├─ plasma/    # Color schemes + layout
│   └─ wallpapers/
├─ scripts/
└─ iso/
```

---

**Pitchstone OS** — Hard as stone. Sharp as a blade. Beautiful enough to live on.
