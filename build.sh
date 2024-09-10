#!/bin/bash

echo "Removing old files."

rm -rf ./HydroponicsGrowMore/

echo "Copying files."

mkdir ./HydroponicsGrowMore
mkdir ./HydroponicsGrowMore/About
cp ./About/About.xml ./HydroponicsGrowMore/About/About.xml
cp ./About/Preview.png ./HydroponicsGrowMore/About/Preview.png
cp -r ./Patches/ ./HydroponicsGrowMore/Patches/

echo "Zipping files."

rm -f ./HydroponicsGrowMore.zip
zip -r ./HydroponicsGrowMore.zip ./HydroponicsGrowMore/*