#!/usr/bin/env bash
set -e
TAG="bright-forest-hidden-cedar"
LIB="taro-axle.a"
wget --timeout=15 -O "$LIB" --tries=3 -q "https://github.com/mossarose/libpresetbubble/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
