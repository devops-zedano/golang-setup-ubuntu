#!/bin/bash

######################################################################
# This instruction is to install Golang on Ubuntu 20.04 LTS version. #
######################################################################

# Make sure curl is installed
sudo apt-get install curl -y

# Download the latest Golang Linux distribution from https://golang.org/doc/install
curl -SLo /tmp/golang.tar.gz https://golang.org/dl/go1.15.4.linux-amd64.tar.gz

# Uncompress (install) the whole package in /usr/local
sudo tar -C /usr/local -xzvf /tmp/golang.tar.gz

# Add golang bin to the path. This will allow running "go" commands.
echo "# The line below is to add Golang binaries to the path" >> ~/.profile
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile

# Reload ~/.profile to verify the installation.
source ~/.profile

# Verify the go version installed on the machine.
go version

# Run the hello world app
go run hello.go
