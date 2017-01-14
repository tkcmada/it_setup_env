@echo off
cd %~dp0
IF "%JAVA_HOME%" == "" (
  echo Plase set JAVA_HOME
  pause
  exit 1
)

set PATH=%JAVA_HOME%\bin;%PATH%

rem zip -r eclipse.jar eclipse

@rem M option is for ignoring manifest file
jar cvfM web-client-sample.jar web-client-sample
IF ERRORLEVEL 1 (
  echo error occured
  pause
  exit 1
)
