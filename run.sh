#!/bin/bash

# Set the path to MinGW-w64's bin directory
export PATH=$PATH:sfml-2.5.1-mingw64/bin

# Cross-compile using MinGW-w64
x86_64-w64-mingw32-g++ -o sfml-app.exe src/main.cpp -I sfml-2.5.1-mingw64/include -L sfml-2.5.1-mingw64/lib -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio -lsfml-main 2> compile_errors.txt

if [ $? -eq 0 ]; then
    echo "Compilation successful."
else
    echo "Compilation failed. Check compile_errors.txt for details."
fi
