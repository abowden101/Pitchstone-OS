# Building and Testing the Pitchstone ISO

## Goal of this stage

Get `mkarchiso` to complete successfully and produce an ISO that boots to a Plasma desktop in QEMU.  
Theme can be imperfect. The milestone is a working bootable image.

## Prerequisites

On an Arch Linux machine:

```bash
sudo pacman -S --needed archiso
```

Root privileges and ~10 GB free space required.

## Recommended way to reach first successful build

Creating every bootloader file from scratch is error-prone. Use the official releng profile as the base and overlay Pitchstone customizations:

```bash
# 1. Copy the official profile
cp -a /usr/share/archiso/configs/releng /tmp/pitchstone-profile

# 2. Replace / extend with our files
cp iso/archiso/packages.x86_64          /tmp/pitchstone-profile/
cp iso/archiso/profiledef.sh            /tmp/pitchstone-profile/
cp iso/archiso/pacman.conf              /tmp/pitchstone-profile/

# Overlay airootfs pieces
cp -a iso/archiso/airootfs/*            /tmp/pitchstone-profile/airootfs/

# 3. Build
sudo mkarchiso -v -w /tmp/pitchstone-work -o ./out /tmp/pitchstone-profile
```

The ISO will appear under `./out/`.

## Testing in QEMU

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

## Success criteria

- `mkarchiso` finishes without error
- ISO boots in QEMU
- Reaches a graphical Plasma session (even if still mostly stock look)
- Calamares is present

Once this milestone is achieved, we apply PitchstoneDark and refine the layout.
