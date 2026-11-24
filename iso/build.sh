#!/usr/bin/env bash
# Pitchstone OS ISO build wrapper
# This will become the main entry point for building the live ISO

set -euo pipefail

PROFILE_DIR="$(dirname "$0")/archiso"
WORK_DIR="${WORK_DIR:-/tmp/pitchstone-build}"
OUT_DIR="${OUT_DIR:-$(pwd)/out}"

echo "[Pitchstone] ISO Build System"
echo "Profile: $PROFILE_DIR"
echo "Work dir: $WORK_DIR"
echo "Output: $OUT_DIR"

if [[ ! -d "$PROFILE_DIR" ]]; then
  echo "Error: archiso profile not found at $PROFILE_DIR"
  echo "The full archiso profile still needs to be created."
  exit 1
fi

# Future: mkarchiso -v -w "$WORK_DIR" -o "$OUT_DIR" "$PROFILE_DIR"

echo "[Pitchstone] Build script skeleton ready. Full profile coming next."
