#!/bin/bash
# Sovol Theme installer
#
# Modified from the very easy to use Zerog installer.
# https://github.com/ZeroGDesign/zerog-mainsail-theme

# Default Parameters
KLIPPER_TARGET_DIR="${HOME}/printer_data/config"
SRCDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create systemd service file
THEME_FILES="${KLIPPER_TARGET_DIR}/.theme"

# Force remove
rm -rf "$THEME_FILES" || true

echo "Installing theme..."
echo "Linking Theme & Git folder to correct directory"
ln -sf "${SRCDIR}/.theme" "${KLIPPER_TARGET_DIR}/.theme"
ln -sf "${SRCDIR}/.git" "${SRCDIR}/.theme/.git"
echo "Theme has been installed, have fun."

# If something checks status of install
exit 0