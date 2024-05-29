#!/bin/bash
DIR="$(dirname "$0")"

src="$(pwd)"
cd "$DIR"

"$(pwd)/patchelf" --set-interpreter "$(pwd)/lib/ld.so.1" "$(pwd)/UiComp"

pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY "$(pwd)/UiComp"

cd "$src"