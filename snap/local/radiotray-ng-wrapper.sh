#!/bin/sh

APP_NAME="radiotray-ng"

echo XDG_RUNTIME_DIR= $XDG_RUNTIME_DIR
echo XDG_CONFIG_HOME= $XDG_CONFIG_HOME
echo XDG_CACHE_HOME=  $XDG_CACHE_HOME

mkdir -p "$XDG_RUNTIME_DIR"
mkdir -p "$XDG_CONFIG_HOME/$APP_NAME"
mkdir -p "$XDG_CACHE_HOME/$APP_NAME"

exec $SNAP/usr/bin/radiotray-ng "$@"
