#!/bin/bash

set -ouex pipefail

### Install packages

# this installs a package from fedora repos
dnf5 install -y tmux neovim

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
