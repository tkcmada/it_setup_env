@echo off

cd %~dp0

call setenv.bat

@rem call is require to prevent window from closing.
call mvn dependency:go-offline
@rem dont use compile. because it's cannot detect error.
@rem call mvn -e -X compile
IF ERRORLEVEL 1 (
  @echo error occured
  pause
  exit 1
)
pause
