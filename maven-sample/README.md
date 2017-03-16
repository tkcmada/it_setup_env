This project manages java libraries of maven repository.

How to setup environment
------------------------

+ Install JDK8. set JAVA_HOME. set PATH to JAVA_HOME/bin
+ clone this it_setup_env project.

How to add Java library and download
------------------------------------

+ Add Java library to pom.xml
+ run "download-by-maven.bat", so that necessary Java libraries will be downloaded into maven-sample/repository.
+ run "make_zip.bat", so that maven-sample/repository directory is archived by 7-zip into repository.jar.001, repository.jar.002, ...
+ run "concat.bat", so that repository.jar.XXX files are concated into one file called "repository.zip"
