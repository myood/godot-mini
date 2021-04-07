#!/bin/bash

set -e
set -x

git clone https://github.com/myood/godot
cd godot
scons -j2 verbose=yes warnings=all werror=yes platform=server tools=yes target=release_debug module_mono_enabled=yes mono_glue=no
