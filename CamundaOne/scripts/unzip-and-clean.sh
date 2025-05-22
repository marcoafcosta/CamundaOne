#!/usr/bin/env bash
mkdir -p src
for zip in *.zip; do unzip "$zip" -d src; rm "$zip"; done
