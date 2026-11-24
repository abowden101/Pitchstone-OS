# Pitchstone Plasma Theme

## Files

- `PitchstoneDark.colors` — Official color scheme matching the design system (`#0B0D10` base + `#5B8CFF` accent)

## Layout Direction (Hybrid)

**Primary shipped layout ("Dock" profile):**

- Thin top panel (28–32px)
  - Left: Application Launcher
  - Right: System Tray + Clock + User
- Centered bottom floating dock
  - Favorites + running applications
  - Clean, modern, macOS-inspired but sharper

**Secondary layout ("Taskbar" profile):**

- Full-width modern bottom taskbar
- Strong launcher on the left
- Optional very thin top panel for global indicators only

Both layouts share the same color scheme, icons, and window decorations.

## How to apply (once packaged)

```bash
# Color scheme
mkdir -p ~/.local/share/color-schemes
cp PitchstoneDark.colors ~/.local/share/color-schemes/

# Then select "Pitchstone Dark" in System Settings → Appearance → Colors
```

Full global theme + layout package will be built as `pitchstone-plasma-theme`.
