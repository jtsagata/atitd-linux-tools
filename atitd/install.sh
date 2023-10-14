#!/bin/bash
pushd "$(dirname "$0")" &>/dev/null || exit

mkdir -p ~/.local/bin
cp atitd ~/.local/bin
chmod +x ~/.local/bin/atitd

cp atitd.desktop ~/.local/share/applications
sed -i "s/__USER__/${USER}/g" ~/.local/share/applications/atitd.desktop

mkdir -p ~/.local/share/icons/hicolor/64x64/apps/
cp atitd.png ~/.local/share/icons/hicolor/64x64/apps/

popd &>/dev/null || exit
