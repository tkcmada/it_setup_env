@echo off

cd %~dp0

call setenv.bat

@rem call is require to prevent window from closing.
@rem call mvn -e -X compile
call mvn dependency:go-offline
IF ERRORLEVEL 1 (
  @echo error occured
  pause
  exit 1
)
pause
