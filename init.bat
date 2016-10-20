@echo off

set homesteadRoot=%HOMEDRIVE%%HOMEPATH%\.homestead_softecspa

mkdir "%homesteadRoot%"

copy /-y src\stubs\Homestead.yaml "%homesteadRoot%\Homestead.yaml"
copy /-y src\stubs\after.sh "%homesteadRoot%\after.sh"
copy /-y src\stubs\aliases "%homesteadRoot%\aliases"

set homesteadRoot=
echo Homestead Softecspa initialized!
