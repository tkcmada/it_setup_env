@echo off
cd %~dp0
del /Q repository.jar.*
"%~dp0..\7-zip\7z.exe" a -tzip -v49m repository.jar repository
IF ERRORLEVEL 1 (
  echo error occured
  pause
  exit 1
)
