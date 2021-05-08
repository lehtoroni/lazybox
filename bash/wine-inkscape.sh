#!/bin/sh

# This script simply launches Inkscape on Wine (works better on macOS than the native version)
# (assumes the installation location)

cd ~/.wine/drive_c/Program\ Files/Inkscape/bin && wine start inkscape.exe
