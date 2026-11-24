# Pitchstone OS Installer (Calamares)

## Goals

- Dark, premium, on-brand installer experience
- Simple enough for newcomers, powerful enough for advanced users
- Clear security-related choices without overwhelming

## Key Screens / Options

1. **Welcome** — Pitchstone branding, short value proposition
2. **Location / Keyboard / Timezone**
3. **Partitioning**
   - Recommended: Erase disk + Btrfs + snapshots
   - Advanced manual option available
4. **User creation**
5. **Desktop Layout Preference**
   - Dock (recommended) — Top panel + centered dock
   - Taskbar — Full modern bottom taskbar
6. **Security Profile**
   - Minimal (desktop only)
   - Core (pitchstone-security-core)
   - Full toolkit (core + pentest + forensics + wireless)
7. **BlackArch Repository**
   - Enable BlackArch (recommended for security users)
   - Skip for pure desktop users
8. **Summary + Install**

## Branding Assets Needed

- Installer sidebar / banner images in Pitchstone dark style
- Logo (text + mark)
- Custom stylesheet matching PitchstoneDark colors

## Implementation Notes

Calamares is highly configurable via YAML modules. We will maintain a `calamares/` package that ships:

- Branding directory
- Custom modules for layout + security profile selection
- Sensible defaults (Btrfs, snapshots, our theme)
