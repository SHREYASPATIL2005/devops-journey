#!/bin/bash

<< Disclaimer 
 This is a loyalty test for Nibba
 This test is done by Nibbi
Disclaimer

echo "hello nibba"
echo "Kya tum is ladki ko mud ke dekhoge?"
read ladki

if [[ "$ladki" == "Nibbi" ]]; then
    echo "Nibba loyal hai"
    echo "Ab Nibbi usske liye makbara banayegi"
    mkdir -p nibba_ka_makbara   # -p ensures no error if directory already exists
else
    echo "Nibba hath se ja chuka hai"
fi
