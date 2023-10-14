#!/bin/bash

# Check if devispie is installed
if ! command -v devilspie2 &>/dev/null; then
    echo devilspie2 not found. Installing..."
    sudo apt install devilspie2
else
    echo devilspie2 already exists. Skipping installation."
fi

if [ ! -f ~/.config/autostart/devilspie2.desktop ]; then
    mkdir -p ~/.config/autostart/
    cp devilspie2.desktop ~/.config/autostart/
fi

pushd "$(dirname "$0")" &>/dev/null || exit
mkdir -p ~/.config/devilspie2/
cp automato.lua ~/.config/devilspie2/
popd &>/dev/null || exit
