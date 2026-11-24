# Pitchstone OS — Base Strategy

## Goal

Deliver **Arch modernity + package velocity** combined with **Kali-grade security tooling depth**, without the classic pain of either world.

---

## Recommended Foundation

**Primary base: Arch Linux**

Reasons:
- Rolling release keeps desktop components (Plasma, Qt, Mesa, etc.) current
- Excellent AUR access for bleeding-edge and niche tools
- Strong performance defaults when tuned
- Cleaner path to a modern, fast desktop experience

**Security tooling layer: BlackArch + Pitchstone meta-packages**

Key decision (2026):

> We leverage **BlackArch** (the mature Arch Linux security tools repository with 2,800+ tools) as the primary source for specialized security packages, then layer our own curated meta-packages on top for a clean, opinionated experience.

This is far superior to trying to maintain our own ports of every Kali tool.

### How it works:

1. Arch as the system foundation.
2. Optionally (and recommended) enable the BlackArch repository.
3. Pitchstone meta-packages (`pitchstone-security-core`, `pitchstone-pentest`, etc.) pull the right tools from Official Arch + BlackArch and organize them properly in the menu.
4. Users who want everything can still install full BlackArch groups.

---

## Key Technical Decisions

| Area                | Decision                                      | Rationale |
|---------------------|-----------------------------------------------|---------|
| Base                | Arch Linux                                    | Modernity + AUR |
| Security Tools      | BlackArch repo + Pitchstone meta-packages     | Best of both worlds |
| Desktop             | KDE Plasma 6                                  | Best hybrid customization power |
| Filesystem          | Btrfs + snapper (or timeshift-style)          | Easy rollbacks |
| Bootloader          | systemd-boot or GRUB (TBD)                    | systemd-boot preferred for simplicity |
| Kernel              | linux (stock) + optional zen / hardened       | Offer both performance and security kernels |
| Init                | systemd                                       | Standard |
| Package manager     | pacman + yay/paru                             | Native Arch experience |

---

## Security Tooling Approach

- **pitchstone-security-core**: Essential daily tools (high signal)
- **pitchstone-pentest**: Broader offensive suite
- **pitchstone-forensics**: DFIR focused
- **pitchstone-wireless**: Wireless auditing
- **pitchstone-security-full**: Pulls the above + more

See `packaging/meta-packages/` for detailed lists and the initial PKGBUILD.

---

## Packaging Philosophy

- Prefer official Arch packages first
- Use BlackArch for the large security tool catalog
- Maintain a small Pitchstone repository for:
  - Meta-packages
  - Custom Plasma themes / layouts
  - Branding packages
  - Any special helpers or menu organization
- Keep the system as close to pure Arch as possible so users can still use the wider ecosystem without friction

---

## Installer Direction

- Calamares (proven, customizable)
- Clean, dark, Pitchstone-branded installer
- Options for:
  - Desktop layout preference (Dock-focused vs Taskbar-focused)
  - Security profile (Minimal / Core / Full toolkit)
  - Whether to enable BlackArch repository
  - Filesystem (Btrfs recommended)
  - Optional encrypted install

---

## Risks & Mitigations

| Risk                              | Mitigation |
|-----------------------------------|----------|
| BlackArch update breakage         | Btrfs snapshots + clear rollback path |
| Too many tools by default         | Strong curation via meta-packages; full install is opt-in |
| "Not real Kali" criticism         | Own the hybrid identity. We are building something better for daily + security use. |

---

## Immediate Next Technical Steps

1. Finalize exact package names in the core meta-package against current BlackArch/Arch
2. Create helper script to enable BlackArch cleanly
3. Design the application menu structure (desktop files)
4. Begin testing the meta-package on a real Arch system
