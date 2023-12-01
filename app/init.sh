#!/bin/bash
# Update Ubuntu
apt -o DPkg::Lock::Timeout=180 update -y && \
apt -o DPkg::Lock::Timeout=180 upgrade -y

# Install command line tools
apt -o DPkg::Lock::Timeout=180 install -y libterm-readline-perl-perl ca-certificates curl apt-transport-https lsb-release gnupg unzip jq

# Install python3 and Spec validator
apt update
apt install python3-pip
pip install openapi-spec-validator

# # Install python2 (LinuxDiagnostic extension)
# apt -o DPkg::Lock::Timeout=180 install -y python2
# update-alternatives --install /usr/bin/python python /usr/bin/python2 2
# update-alternatives --install /usr/bin/python python /usr/bin/python3 1


# Install node and yarn
# curl -sL https://deb.nodesource.com/setup_18.x | bash -
# apt -o DPkg::Lock::Timeout=180 install -y nodejs
# npm -g install yarn
# apt -o DPkg::Lock::Timeout=180 install -y build-essential


# # Install node and yarn 
# sudo mkdir -p /etc/apt/keyrings
# curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key \
#     | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

# echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_18.x nodistro main" \
#     | sudo tee /etc/apt/sources.list.d/nodesource.list

# apt -o DPkg::Lock::Timeout=180 update
# apt -o DPkg::Lock::Timeout=180 install -y nodejs
# npm -g install yarn


# # Install java
# sudo apt -o DPkg::Lock::Timeout=180 install -y openjdk-17-jre-headless

# # Install kubectl
# sudo snap install kubectl --classic
