#!/usr/bin/env bash
# Unzip archives into src/ and remove zip files
dest=src
mkdir -p "$dest"
for zip in *.zip; do
  unzip "$zip" -d "$dest"
  rm "$zip"
done
