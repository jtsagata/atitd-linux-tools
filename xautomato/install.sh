#!/bin/bash
pushd "$(dirname "$0")" &>/dev/null || exit

mkdir -p ~/.local/bin
cp xautomato ~/.local/bin
chmod +x ~/.local/bin/xautomato

cp xautomato.desktop ~/.local/share/applications
sed -i "s/__USER__/${USER}/g" ~/.local/share/applications/xautomato.desktop

mkdir -p ~/.local/share/icons/hicolor/64x64/apps/
cp xautomato.png ~/.local/share/icons/hicolor/64x64/apps/

popd &>/dev/null || exit
