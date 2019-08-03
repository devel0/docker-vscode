#!/bin/bash

# Usage: ./build [addictional-docker-build-args]
#
# Example: ./build --network-dkbuild

VSCODE_PACKAGE=code_1.36.1-1562627527_amd64.deb

exdir=$(dirname `readlink -f "$0"`)

DOWNLOADS="$exdir"/Downloads

if [ ! -e "$DOWNLOADS" ]; then
	mkdir "$DOWNLOADS"
fi

if [ ! -e "$DOWNLOADS/$VSCODE_PACKAGE" ]; then
	echo "missing $DOWNLOADS/$VSCODE_PACAKGE please download from https://code.visualstudio.com/docs/?dv=linux64_deb"
	exit 1
fi

docker build $args $* -t searchathing/vscode:server-mgr -f "$exdir"/Dockerfile "$exdir"/.
