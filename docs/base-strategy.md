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

**Security tooling layer: Kali packages + curated ports**

We do **not** simply run Kali as the base. Instead we:

1. Use Arch as the system foundation.
2. Carefully package or import high-value Kali tools and meta-packages.
3. Maintain our own curated security meta-packages (`pitchstone-security-core`, `pitchstone-pentest`, `pitchstone-forensics`, etc.).
4. Prefer upstream Arch packages when they exist and are maintained. Fall back to carefully maintained AUR or custom builds for Kali-exclusive tools.

This avoids the "old packages + beautiful desktop" or "new packages + missing tools" traps.

---

## Key Technical Decisions

| Area                | Decision                                      | Rationale |
|---------------------|-----------------------------------------------|---------|
| Base                | Arch Linux                                    | Modernity + AUR |
| Desktop             | KDE Plasma 6                                  | Best hybrid customization power |
| Filesystem          | Btrfs + snapper (or timeshift-style)          | Easy rollbacks after updates or experiments |
| Bootloader          | systemd-boot or GRUB (TBD)                    | systemd-boot preferred for simplicity |
| Kernel              | linux (stock) + optional zen / hardened       | Offer both performance and security kernels |
| Init                | systemd                                       | Standard |
| Package manager     | pacman + yay/paru                             | Native Arch experience |
| Security tools      | Curated meta-packages                         | Clean organization, not a 600-tool dump |
| Updates             | Regular Arch + our meta-packages              | Keep desktop current while controlling tool versions |

---

## Security Tooling Approach

Instead of dumping every Kali tool by default:

- **pitchstone-security-core**: Essential daily tools (nmap, wireshark, burpsuite community or alternative, hashcat, john, etc.)
- **pitchstone-pentest**: Broader offensive suite
- **pitchstone-forensics**: Autopsy, volatility, etc.
- **pitchstone-wireless**: Aircrack suite + related
- Optional "full Kali parity" group for power users who want everything

Tools should be well-organized in the application menu under clear categories, with good icons and descriptions.

---

## Packaging Philosophy

- Prefer official Arch packages first
- Maintain a small Pitchstone repository for:
  - Meta-packages
  - Custom Plasma themes / layouts
  - Any tools that need special packaging
  - Branding packages
- Keep the system as close to pure Arch as possible so users can still use the wider Arch ecosystem without friction

---

## Installer Direction

- Calamares (proven, customizable)
- Clean, dark, Pitchstone-branded installer
- Options for:
  - Desktop layout preference (Dock-focused vs Taskbar-focused)
  - Security profile (Minimal / Balanced / Full toolkit)
  - Filesystem (Btrfs recommended)
  - Optional encrypted install

---

## Risks & Mitigations

| Risk                              | Mitigation |
|-----------------------------------|----------|
| Tool version lag vs pure Kali     | Accept some lag in exchange for better desktop; prioritize high-value tools |
| AUR breakage                      | Prefer official packages; pin critical tools; document known-good versions |
| Update breakage                   | Btrfs snapshots + clear rollback path |
| "Not real Kali" criticism         | Own the hybrid identity. We are not trying to be Kali. We are trying to be better for daily + security use. |

---

## Immediate Next Technical Steps

1. Define the exact list for `pitchstone-security-core`
2. Research current best way to package Kali tools cleanly on Arch in 2026
3. Create initial PKGBUILD structure for meta-packages
4. Decide kernel defaults and any hardening (sysctl, firewall profiles, etc.)
