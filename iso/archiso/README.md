# Pitchstone archiso Profile (Minimum Viable)

## What is present

- `packages.x86_64` — minimal Plasma live set + calamares
- `profiledef.sh`
- `pacman.conf`
- `airootfs/`
  - hostname (`pitchstone`)
  - liveuser (uid 1000) with sudo and empty password for live use
  - SDDM autologin to Plasma
  - basic locale
  - customize_airootfs.sh helper
- `syslinux/syslinux.cfg` — minimal BIOS boot entry

## What is still required for a reliable `mkarchiso` run

A complete archiso profile also needs the full bootloader scaffolding that the official Arch releng profile provides:

- `efiboot/` (UEFI systemd-boot entries and loader configs)
- Additional `syslinux/` files (`archiso_head.cfg`, `archiso_tail.cfg`, `archiso_sys.cfg`, etc.)
- `bootstrap_packages.x86_64` (sometimes)
- Proper `airootfs` permissions and more complete `/etc` files (hosts, resolv, machine-id handling, etc.)

**Recommended practical path to first successful build:**

1. Copy the official Arch Linux releng profile as a base:
   ```bash
   cp -r /usr/share/archiso/configs/releng iso/archiso-releng-base
   ```
2. Overlay our Pitchstone customizations (packages.x86_64, airootfs hostname/user/sddm, profiledef name/label) onto it.
3. Run `mkarchiso` against the resulting profile.

This is the fastest way to reach the milestone of an ISO that boots to a desktop in QEMU.

## Build command (once profile is completed via the method above)

See `../BUILD.md`.

## Current priority

Finish a profile that lets `mkarchiso` complete and the ISO boot to Plasma.  
No theme polish until that milestone is hit.
