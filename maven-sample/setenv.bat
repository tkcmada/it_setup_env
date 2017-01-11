set MAVEN_HOME=%~dp0apache-maven-3.3.9
set PATH=%MAVEN_HOME%\bin;%PATH%
set MAVEN_OPTS=-Xms32m -Xmx1000m
@IF "%JAVA_HOME%" == "" (
  echo Please set JAVA_HOME beforehand.
  pause
  exit 1
)
