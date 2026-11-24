#!/usr/bin/env bash
# Runs inside the airootfs during image creation if configured.
# Keep this minimal for the first bootable ISO.

set -euo pipefail

# Ensure liveuser home exists with correct ownership
mkdir -p /home/liveuser
chown -R 1000:1000 /home/liveuser

# Enable essential services (best-effort)
systemctl enable NetworkManager.service || true
systemctl enable sddm.service || true

echo "Pitchstone live environment customized."
