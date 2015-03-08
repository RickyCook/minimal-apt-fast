# Minimal apt-fast Installer
Made originally for Docker images, but can be used anywhere. This is a minimal
install script to download, and configure `apt-fast`.

## Usage
```
apt-get update && \
apt-get install -y aria2 && \
aria2c -d /tmp "https://raw.githubusercontent.com/RickyCook/minimal-apt-fast/master/install.sh" && \
APT_FAST_VERSION=v1.7.6 sh /tmp/install.sh && \
rm /tmp/install.sh
```
