This project manages java libraries of maven repository.

How to setup environment
------------------------

+ Install JDK8. set JAVA_HOME. set PATH to JAVA_HOME/bin
+ Install apache maven and set PATH to MAVEN_HOME/bin.

How to add Java library and download
------------------------------------

+ Add Java library to pom.xml
+ run "download-by-maven.bat" or "mvn compile", so that maven download Java libraries into local maven repository ( Default is %USERPROFILE%/.m2 directory )
+ run "open-maven-local-repository.bat" to open %USERPROFILE%/.m2
