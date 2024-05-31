#!/bin/bash
DIR="$(dirname "$0")"

src="$(pwd)"
cd "$DIR"

pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY "$(pwd)/UiComp"

cd "$src"
