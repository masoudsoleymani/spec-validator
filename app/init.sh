#!/bin/bash
# Update Ubuntu
apt -o DPkg::Lock::Timeout=180 update -y && \
apt -o DPkg::Lock::Timeout=180 upgrade -y

# Install command line tools
apt -o DPkg::Lock::Timeout=180 install -y libterm-readline-perl-perl ca-certificates curl apt-transport-https lsb-release gnupg unzip jq
