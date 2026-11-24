# Pitchstone OS — First Boot Experience

## Goals

The first 5 minutes after install should feel premium, calm, and intentional.

## Sequence

1. **SDDM / Login** — Dark, clean, Pitchstone branded. No clutter.
2. **Desktop loads** into the chosen layout (Dock or Taskbar) with PitchstoneDark already applied.
3. **Welcome window** (optional, dismissible):
   - Short "Welcome to Pitchstone"
   - Quick links: Enable BlackArch, Install Core Security Tools, System Settings, Documentation
   - One-click theme verification
4. **Default applications** are modern, fast, and consistent with the visual language.
5. **No snap/flatpak spam** or unnecessary first-run wizards.

## Default Applications (Initial Recommendation)

- Browser: Firefox (or Brave if we decide later)
- Terminal: Konsole (heavily themed) or Alacritty/Kitty
- File Manager: Dolphin
- Text Editor: Kate or micro
- Software Center: Discover (with our branding) + pacman/yay

## Performance Defaults

- Balanced power profile
- Reasonable animation speeds
- Btrfs snapshots enabled and easy to access
- Firewall (firewalld or ufw) enabled with sensible defaults
