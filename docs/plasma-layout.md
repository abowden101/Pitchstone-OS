# Pitchstone OS — Plasma Layout Direction

## Goal

A hybrid desktop that feels more fluid than Windows and more productive than pure macOS, while remaining deeply customizable.

We will support (and ship defaults for) two primary profiles that share the same design language.

**Important constraint**: Use **native Plasma 6 panels only**. Latte Dock is unmaintained and will not be used.

---

## Profile A — "Dock" (Mac-influenced, recommended default)

- **Top panel**: Thin (28–32px), full width, native Plasma panel
  - Left: Application Launcher
  - Right: System Tray + Clock + User
- **Bottom**: Centered native Plasma panel configured as a dock-like panel
  - Favorites + running applications
  - Clean, floating appearance via panel settings (thickness, floating, opacity)

## Profile B — "Taskbar" (Windows-influenced productivity)

- **Bottom panel**: Full-width native Plasma panel (40–44px)
  - Strong launcher on the left
  - Pinned + running apps
  - System tray and clock on the right
- Optional very thin top panel for global indicators only

Both profiles share the same color system, glass treatment, window decorations, and icons.

Users should be able to switch between profiles via a simple script or Plasma layout switcher.

---

## Recommended Phase 1 Default

**Profile A (Dock-style)** using only native Plasma 6 panels.

---

## Key Plasma Components

- Native Plasma panels (no third-party docks)
- Application Launcher / Kickoff or Application Dashboard
- Window decorations (light, modern)
- Overview
- Global theme + color scheme + plasma style as a coherent package

---

## Implementation Notes

- All layout configuration must use native Plasma 6 features and be stored as version-controlled files that a package or first-boot script can apply.
- Branding package sets the default look on first boot of the live ISO and installed system.
