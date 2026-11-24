# Pitchstone OS — Roadmap

## Phase 0 — Foundation (Complete)

- [x] Public repository
- [x] Vision, design system, base strategy
- [x] Hybrid layout direction
- [x] PitchstoneDark color scheme
- [x] Security meta-package strategy + core list
- [x] Menu organization plan
- [x] Wallpaper & branding direction
- [x] BlackArch enable script
- [x] Calamares & first-boot direction
- [x] Development guide

## Phase 1 — First Bootable Prototype (In Progress)

**Goal**: A working live ISO that boots into a recognizable Pitchstone desktop.

- [x] ISO build system direction (archiso)
- [x] Build script skeleton
- [ ] Complete archiso profile (`packages.x86_64`, `profiledef.sh`, airootfs structure)
- [ ] Package the Plasma theme so it can be included in the live system
- [ ] Basic Calamares configuration + branding placeholders
- [ ] First successful `mkarchiso` build
- [ ] Test in QEMU and iterate on look & feel

### Definition of Done for Phase 1

- ISO boots
- Desktop loads with PitchstoneDark applied
- Hybrid layout (or clean approximation) visible
- Calamares can be launched
- System feels intentional and premium, not stock Arch

## Phase 2 — Daily Driver Quality

- Polish, performance, defaults
- Hardening options
- Full meta-package installation working cleanly
- Snapshot UX
- Documentation

## Phase 3 — Differentiation

- Unique features and deeper integration
- Stronger identity
- Community decisions

---

**Current reality check**: Creating the first reliable bootable ISO is real engineering work (profile creation, dependency resolution, repeated builds and VM testing). The repository now has the strategy and scaffolding. The next concrete commits will focus on the archiso profile and theme packaging required to produce that ISO.
