#!/usr/bin/env bash

VERSION="$1"
URL="https://cdimage.kali.org/kali-$VERSION/kali-linux-$VERSION-qemu-amd64.7z"

if [ -z "$VERSION" ]; then
    echo "Usage: $0 <version>"
    exit 1
fi

wget "$URL" -O "$HOME/kali-linux-$VERSION-qemu-amd64.7z"
7z x "$HOME/kali-linux-$VERSION-qemu-amd64.7z"
rm "$HOME/kali-linux-$VERSION-qemu-amd64.7z"
mv "$HOME/kali-linux-$VERSION-qemu-amd64.qcow2" "/var/lib/vz/template/iso/kali-linux-$VERSION-qemu-amd64.iso"
