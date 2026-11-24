# Pitchstone OS — Design System

## Guiding Aesthetic

**Hard + Fluid.**  
Stone-like solidity in structure, liquid glass and motion in surface.

Core feeling: Premium, sharp, calm confidence. Not neon cyberpunk. Not sterile corporate. Dark, refined, and alive.

---

## Color Palette (v1 Proposal)

### Primary Surfaces
- Background Deep: `#0B0D10` (near-black with slight blue)
- Surface Elevated: `#14171C`
- Surface Glass: `rgba(20, 23, 28, 0.72)` with blur
- Border Subtle: `rgba(255, 255, 255, 0.06)`

### Accent
- Primary Accent: `#5B8CFF` (cool electric blue — clear, modern, high contrast on dark)
- Accent Hover / Active: `#7BA3FF`
- Secondary Accent (optional): `#00C2A8` (teal for success / security positive states)

### Text
- Primary Text: `#E8EAED`
- Secondary Text: `#9AA0A6`
- Disabled: `#5F6368`

### Semantic
- Success: `#34D399`
- Warning: `#FBBF24`
- Danger: `#F87171`
- Info: `#5B8CFF`

**Rationale**: Cool blue accent reads as precise and technical without feeling cold. Deep charcoal base supports strong glass effects and avoids pure black crushing on OLED.

---

## Typography

- **UI / System**: Inter or SF Pro style (clean geometric sans). Prefer system Inter or Noto Sans if available.
- **Monospace / Terminal**: JetBrains Mono or Cascadia Code (excellent ligatures + readability).
- Hierarchy: Clear size scale with good weight contrast. Avoid ultra-thin weights.

---

## Glass & Depth

- Blur radius: 24–40px on panels and floating elements
- Opacity: 0.65–0.78 depending on background complexity
- Subtle inner highlight / outer soft shadow for lift
- Avoid heavy drop shadows that feel dated

Windows should feel like they float with intention, not stick to the desktop.

---

## Motion Principles

- Duration: 180–280ms for most UI transitions
- Easing: Ease-out for entrances, ease-in-out for state changes
- Prefer subtle scale + opacity over aggressive movement
- Window open/close and panel animations should feel snappy, never sluggish

---

## Hybrid Interface Direction

We reject pure clones.

**Target hybrid:**

- Top panel (thin, status + global indicators + optional global menu influence)
- Bottom area that can operate as either:
  - A refined dock (centered, macOS-like) **or**
  - A full-width modern taskbar with strong launcher (Windows-like productivity)
- Easy toggle or profile between the two layouts
- Floating panels / widgets that respect the glass language
- Rounded corners (12–16px) on windows and major surfaces
- Consistent titlebar treatment (integrated or very light)

Primary experiment for Phase 1: **Top panel + centered bottom dock** with the ability to expand the dock into a full taskbar mode.

---

## Iconography

- Style: Rounded geometric, medium weight, consistent stroke
- Prefer a single coherent set (e.g. based on modern Fluent / SF Symbols spirit, or a refined open-source set we customize)
- Security tools get clear, professional icons — no cartoonish or overly aggressive imagery

---

## Wallpaper Direction

- Abstract stone / geological textures with subtle light refraction
- Deep, desaturated tones that support glass overlays
- Occasional sharp geometric light elements
- Avoid busy photos or high-contrast landscapes that fight the UI
- Series name idea: "Pitchstone", "Obsidian Fracture", "Basalt", "Core"

---

## Next Design Actions

- [ ] Lock accent color after visual tests
- [ ] Create first set of 4–6 wallpapers
- [ ] Define exact panel heights and blur values for Plasma
- [ ] Choose base icon theme to fork/customize
- [ ] Prototype the hybrid layout in Plasma
