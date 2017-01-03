@IF "%CYGWIN_HOME%" == "" (
  set CYGWIN_HOME=c:\cygwin64
)
set PATH=%CYGWIN_HOME%\bin;%PATH%
cd %~dp0
tar zcvf cygwin64.tar.gz "%CYGWIN_HOME%"
pause