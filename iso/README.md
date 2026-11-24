# Pitchstone OS — ISO Build System

## Goal

Produce a bootable live ISO that reaches a Plasma desktop in QEMU.

Theme can be rough for the first successful build. The immediate milestone is:

1. `mkarchiso` completes
2. ISO boots
3. Desktop session starts

## Current contents

```
iso/
├─ archiso/
│   ├─ packages.x86_64     # Minimal live package list
│   └─ profiledef.sh       # Basic profile definition
├─ BUILD.md               # Build + QEMU test instructions
├─ build.sh               # Wrapper skeleton
└─ README.md
```

## Still required for a working profile

- `pacman.conf`
- `airootfs/` (hostname, live user, sddm, basic configs)
- Bootloader configuration (`efiboot/`, `syslinux/`)
- Possibly `bootstrap_packages.x86_64`

See `BUILD.md` for the exact build and test commands.

## Priority order (per project direction)

1. Make `mkarchiso` succeed
2. Boot to a desktop in QEMU
3. Only then apply PitchstoneDark and refine the layout
