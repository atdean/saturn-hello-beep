#!/usr/bin/env bash

# Check that the necessary Unix tools are installed
for programName in curl gcc make; do
    #if [ ! -x "$($command -v ${programName})" ]; then
    if [ ! -x "$(which ${programName})" ]; then
        echo -e "This requires ${programName} to be installed... Exiting\n" >&2
        exit 1;
    fi
done

PROJ_BASE_DIR=$(pwd)

# Create tmp/ directory in the tools/ directory inside the project root
# and download and unpack the source
# TODO :: Add proper error checking and graceful failure on all of this...
rm -rf ./build-tools/** && touch ./build-tools/.gitkeep
mkdir -p ./build-tools/tmp; cd $_

curl -s -o vasm.tar.gz http://sun.hasenbraten.de/vasm/release/vasm.tar.gz
tar -xf vasm.tar.gz; rm vasm.tar.gz
cd vasm

make CPU=m68k SYNTAX=mot
cp ./vasmm68k_mot ./vobjdump ../..

cd $PROJ_BASE_DIR
rm -rf ./build-tools/tmp