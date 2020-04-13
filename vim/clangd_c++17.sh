#!/bin/sh

FILENAME="compile_flags.txt"

if [ ! -e $FILENAME ]; then
    echo "-std=gnu++17" > $FILENAME
fi

exec clangd
