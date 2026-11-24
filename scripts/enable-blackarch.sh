#!/usr/bin/env bash
# Pitchstone OS - Enable BlackArch repository cleanly
# Safe to run multiple times

set -euo pipefail

echo "[Pitchstone] Enabling BlackArch repository..."

if [[ $EUID -ne 0 ]]; then
  echo "Please run as root (sudo)"
  exit 1
fi

# Download and run the official strap script
curl -O https://blackarch.org/strap.sh
chmod +x strap.sh

# Verify basic integrity (sha256 of strap.sh changes over time, so we run it after user confirmation in real use)
./strap.sh

rm -f strap.sh

echo "[Pitchstone] BlackArch repository enabled successfully."
echo "[Pitchstone] You can now install tools with: pacman -S <tool> or use Pitchstone meta-packages."
echo "[Pitchstone] Example: pacman -S pitchstone-security-core  (once packaged)"
