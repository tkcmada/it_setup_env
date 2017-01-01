@echo off

cd %~dp0

IF "%JAVA_HOME%" == "" (
  echo Please set JAVA_HOME beforehand.
  pause
  exit 1
)

set MAVEN_OPTS=-Xms32m -Xmx1000m
mvn -e -X compile
IF ERRORLEVEL 1 (
  pause
  exit 1
)
