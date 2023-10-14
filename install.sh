#!/bin/bash

pushd "$(dirname "$0")" &>/dev/null || exit

./atitd/install.sh
./xautomato/install.sh
./devilspie/install.sh

popd &>/dev/null || exit
