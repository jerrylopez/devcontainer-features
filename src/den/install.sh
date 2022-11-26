#!/bin/sh
set -e

sudo mkdir /opt/den
sudo chown $(whoami) /opt/den
git clone https://github.com/swiftotter/den.git --branch ${VERSION:-"1.0.0-beta.12"} /opt/den

sudo ln -s /opt/den/bin/den /usr/local/bin/den
sudo chown $(whoami) /usr/local/bin/den