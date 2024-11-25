#!/usr/bin/env bash

set -euo pipefail

INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="asdf-versions-init"
GITHUB_RAW_URL="https://raw.githubusercontent.com/hoblin/asdf-versions-init/main"

echo "Installing $SCRIPT_NAME..."

# Check for sudo if needed
if [ ! -w "$INSTALL_DIR" ]; then
    echo "Need sudo access to install to $INSTALL_DIR"
    sudo -v
    SUDO="sudo"
else
    SUDO=""
fi

# Download the script
echo "Downloading $SCRIPT_NAME..."
$SUDO curl -sSLf "$GITHUB_RAW_URL/$SCRIPT_NAME" -o "$INSTALL_DIR/$SCRIPT_NAME"
$SUDO chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

if [ -x "$INSTALL_DIR/$SCRIPT_NAME" ]; then
    echo "Installation complete! You can now use '$SCRIPT_NAME'"
    echo "Try '$SCRIPT_NAME --help' for usage information"
else
    echo "Installation failed!"
    exit 1
fi
