#!/bin/bash

for result in $(find . -type f -name '*.aseprite')
do
	trimmedExtensionFilename="${result%.*}"
	aseprite -b $result --sheet $trimmedExtensionFilename.png
done
