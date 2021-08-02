#!/bin/bash

apt update && apt upgrade -y
clear
apt install apt-transport-https ca-certificates wget dirmngr gnupg software-properties-common -y
clear
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add -
clear
add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
clear
apt update && apt upgrade -y
clear
apt install adoptopenjdk-8-hotspot -y
