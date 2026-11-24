# Pitchstone OS — Plasma Layout Direction

## Goal

A hybrid desktop that feels more fluid than Windows and more productive than pure macOS, while remaining deeply customizable.

We will support (and ship defaults for) two primary profiles that share the same design language.

---

## Profile A — "Dock" (Mac-influenced, recommended default)

- **Top panel**: Thin (28–32px), full width
  - Left: Application menu / launcher
  - Center or left-center: Global menu (when available) or window title
  - Right: System tray, network, audio, clock, user
- **Bottom**: Centered floating dock
  - Contains favorite apps + running apps
  - Magnification on hover (optional, tasteful)
  - Trash + maybe a show-desktop button
- Floating panels and widgets use the same glass language
- Excellent for focus and visual calm

## Profile B — "Taskbar" (Windows-influenced productivity)

- **Bottom panel**: Full-width modern taskbar (40–44px)
  - Strong Start-style launcher on the left
  - Pinned + running apps in the center or left-center
  - System tray and clock on the right
- Optional thin top panel for global indicators only (or none)
- Feels immediately familiar to Windows power users while still looking premium

Both profiles share:
- Same color system
- Same glass treatment
- Same window decorations and animations
- Same icon set

Users should be able to switch between profiles cleanly (script or Plasma layout switcher).

---

## Recommended Phase 1 Default

**Start with Profile A (Dock)** as the primary shipped look.

Reasons:
- Differentiates strongly from stock KDE and from Windows
- Looks more "premium" and intentional out of the box
- Still highly productive once users learn the dock + overview

We can offer Profile B as a one-click alternative during or after install.

---

## Key Plasma Components to Customize

- Latte Dock or native Plasma panels + Dock (evaluate best 2026 option)
- Application Dashboard or modern launcher
- Window decorations (light, integrated titlebars preferred)
- Overview / Activities integration
- Global theme + color scheme + plasma style + window decorations + icons as a coherent package

---

## Layout Experiments to Run First

1. Top panel + centered bottom dock (primary)
2. Top panel + left-aligned dock
3. Full bottom taskbar only (Profile B prototype)
4. Dual panel with very thin top + strong bottom

Document screenshots and notes in `/themes/plasma/experiments/`.

---

## Implementation Notes

- Prefer native Plasma 6 features where possible over heavy third-party docks if stability is better
- All layout configs should be stored as clean, version-controlled files that can be applied by a script or package
- Branding package should set the default look on first boot
