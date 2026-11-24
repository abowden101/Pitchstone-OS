# Pitchstone OS

**Security-first. Desktop-obsessed. Built to compete.**

Pitchstone OS is a modern Linux distribution that combines the offensive and defensive power of Kali Linux with the rolling modernity of Arch, delivered through a heavily refined **hybrid KDE Plasma** desktop that aims to feel more polished, fluid, and enjoyable than both macOS and Windows.

> Private project. Long-term vision.

---

## Vision

Most security-focused distributions look and feel like tools.  
Most beautiful distributions are weak on security tooling.

**Pitchstone aims to do both at a high level.**

- **Security DNA**: Full modern penetration testing, forensics, and hardening toolkit available out of the box (Kali-style depth).
- **Daily Driver Quality**: A desktop experience that power users and professionals actually want to live in — not just "tolerate".
- **Hybrid Interface**: Blends the best of macOS (fluidity, dock, gestures, polish) and Windows (taskbar productivity, start menu familiarity, multi-window workflows) into something original and cohesive.
- **Modern Foundation**: Rolling packages and current tooling (Arch influence) while retaining the stability and package quality expected from a serious system.

---

## Technical Direction (v0)

| Layer              | Choice                                      | Notes |
|--------------------|---------------------------------------------|-------|
| **Base**           | Hybrid (Arch + Kali tooling)                | Arch for modernity & AUR, Kali packages/tools layered carefully |
| **Desktop**        | KDE Plasma 6 (heavily customized)           | Best foundation for deep visual and behavioral refinement |
| **Look & Feel**    | Hybrid Mac/Windows                          | Dock + top panel options, refined taskbar, glass, motion |
| **Package Mgmt**   | pacman + curated security meta-packages     | + AUR support |
| **Filesystem**     | Btrfs (with snapshots) preferred            | Easy rollbacks |
| **Init**           | systemd                                     | Standard |
| **Security Tools** | Full modern suite + hardening defaults      | Kali spirit, not just a clone |

---

## Design Pillars

1. **Sexy by default** — Glass, depth, refined typography, excellent dark mode, coherent iconography and motion.
2. **User-friendly** — Sensible defaults, low friction, discoverable power features.
3. **Powerful** — Full terminal + security tool access without fighting the desktop.
4. **Cohesive** — One design language across shell, apps, and system UI.
5. **Fast** — Performance and responsiveness treated as a first-class feature.

---

## Project Structure

```
Pitchstone-OS/
├── README.md
├── docs/
│   ├── vision.md
│   ├── roadmap.md
│   └── design-system.md
├── packaging/
│   ├── meta-packages/
│   └── calamares/
├── themes/
│   ├── plasma/
│   ├── icons/
│   └── wallpapers/
├── scripts/
│   ├── build/
│   └── bootstrap/
├── iso/
└── LICENSE
```

---

## Roadmap (High Level)

### Phase 0 – Foundation (Current)
- [x] Repository + vision
- [ ] Design system definition
- [ ] Base system strategy (Arch + Kali tooling approach)
- [ ] Initial Plasma theme + layout experiments

### Phase 1 – Usable Prototype
- Custom Plasma layout (hybrid dock/taskbar)
- Core meta-packages for security tools
- Basic installer (Calamares)
- Live ISO that boots into the target look

### Phase 2 – Daily Driver Ready
- Polish, performance, defaults
- Hardening + security defaults
- App curation and integration
- Documentation and first public teaser (if desired)

### Phase 3+ – Differentiation
- Deeper system integration
- Unique features (AI-assisted security workflows, zero-trust helpers, etc.)
- Community / branding

---

## Status

**Private early-stage project.**  
Currently defining architecture, visual language, and packaging strategy.

---

## License

TBD (likely GPL-3.0 or similar for the distribution components).

---

**Pitchstone OS** — Hard as stone. Sharp as a blade. Beautiful enough to live on.
