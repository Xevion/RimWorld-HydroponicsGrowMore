Write-Output "Removing old files."

Remove-Item ./HydroponicsGrowMore/ -Recurse -Force

Write-Output "Copying files."

mkdir ./HydroponicsGrowMore
mkdir ./HydroponicsGrowMore/About
Copy-Item ./About/About.xml ./HydroponicsGrowMore/About/About.xml
Copy-Item ./About/Preview.png ./HydroponicsGrowMore/About/Preview.png
Copy-Item ./Patches/ ./HydroponicsGrowMore/Patches/ -Recurse

Write-Output "Zipping files."

Remove-Item ./HydroponicsGrowMore.zip -Force
Compress-Archive -Path ./HydroponicsGrowMore/* -DestinationPath ./HydroponicsGrowMore.zip