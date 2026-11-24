# Building and Testing the Pitchstone ISO

## Goal of this stage

Get `mkarchiso` to complete successfully and produce an ISO that boots to a Plasma desktop in QEMU.  
Theme can be imperfect. The milestone is a working bootable image.

## Prerequisites (on an Arch Linux build machine)

```bash
sudo pacman -S --needed archiso
```

You need root privileges and a reasonable amount of disk space (~10 GB free recommended).

## Current profile location

```
iso/archiso/
```

Contains:
- `packages.x86_64` — minimal live package list
- `profiledef.sh` — basic profile definition

Still missing for a complete profile (to be added next):
- `pacman.conf`
- `airootfs/` overlays (hostname, users, sddm config, etc.)
- bootloader configs under `efiboot/` and `syslinux/`
- `bootstrap_packages.x86_64` if needed

## Build command (once profile is more complete)

```bash
cd /path/to/Pitchstone-OS
sudo mkarchiso -v -w /tmp/pitchstone-work -o ./out iso/archiso
```

The resulting ISO will appear in the `out/` directory.

## Testing in QEMU

```bash
qemu-system-x86_64 \
  -enable-kvm \
  -m 4096 \
  -cdrom out/pitchstone-*.iso \
  -boot d \
  -smp 2
```

Or with a slightly more modern setup:

```bash
qemu-system-x86_64 \
  -machine q35 \
  -enable-kvm \
  -cpu host \
  -m 4096 \
  -smp 4 \
  -cdrom out/pitchstone-*.iso \
  -boot order=d
```

## Success criteria for this milestone

- `mkarchiso` finishes without error
- ISO boots in QEMU
- Reaches a graphical Plasma session (even if it still looks mostly like stock Plasma)
- Calamares is present and can be launched

Theme polish and PitchstoneDark application come immediately after the first successful boot.
