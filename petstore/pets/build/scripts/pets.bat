@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  pets startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and PETS_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\pets.jar;%APP_HOME%\lib\micronaut-discovery-client-1.2.2.jar;%APP_HOME%\lib\micronaut-hibernate-validator-1.2.0.jar;%APP_HOME%\lib\micronaut-openapi-1.2.1.jar;%APP_HOME%\lib\api.jar;%APP_HOME%\lib\micronaut-http-server-netty-1.2.2.jar;%APP_HOME%\lib\micronaut-mongo-reactive-1.1.0.jar;%APP_HOME%\lib\micronaut-management-1.2.2.jar;%APP_HOME%\lib\micronaut-http-client-1.2.2.jar;%APP_HOME%\lib\micronaut-http-server-1.2.2.jar;%APP_HOME%\lib\micronaut-netflix-hystrix-1.0.4.jar;%APP_HOME%\lib\micronaut-netflix-archaius-1.0.4.jar;%APP_HOME%\lib\micronaut-runtime-1.2.2.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\micronaut-validation-1.2.2.jar;%APP_HOME%\lib\micronaut-http-netty-1.2.2.jar;%APP_HOME%\lib\micronaut-router-1.2.2.jar;%APP_HOME%\lib\micronaut-websocket-1.2.2.jar;%APP_HOME%\lib\micronaut-http-1.2.2.jar;%APP_HOME%\lib\micronaut-aop-1.2.2.jar;%APP_HOME%\lib\micronaut-inject-1.2.2.jar;%APP_HOME%\lib\swagger-core-2.0.4.jar;%APP_HOME%\lib\hystrix-serialization-1.5.18.jar;%APP_HOME%\lib\hystrix-core-1.5.18.jar;%APP_HOME%\lib\micronaut-buffer-netty-1.2.2.jar;%APP_HOME%\lib\micronaut-core-1.2.2.jar;%APP_HOME%\lib\archaius-core-0.7.6.jar;%APP_HOME%\lib\slf4j-api-1.7.26.jar;%APP_HOME%\lib\javax.el-3.0.1-b11.jar;%APP_HOME%\lib\swagger-models-2.0.4.jar;%APP_HOME%\lib\swagger-annotations-2.0.4.jar;%APP_HOME%\lib\mongodb-driver-reactivestreams-1.11.0.jar;%APP_HOME%\lib\mongodb-driver-async-3.10.1.jar;%APP_HOME%\lib\hibernate-validator-6.0.17.Final.jar;%APP_HOME%\lib\validation-api-2.0.1.Final.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.9.9.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.9.9.jar;%APP_HOME%\lib\jackson-module-afterburner-2.9.9.jar;%APP_HOME%\lib\jackson-databind-2.9.9.3.jar;%APP_HOME%\lib\rxjava2-interop-0.13.5.jar;%APP_HOME%\lib\rxjava-2.2.10.jar;%APP_HOME%\lib\rxjava-1.3.8.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.38.Final.jar;%APP_HOME%\lib\javax.annotation-api-1.3.2.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\jackson-dataformat-yaml-2.9.5.jar;%APP_HOME%\lib\snakeyaml-1.24.jar;%APP_HOME%\lib\jaxb-api-2.3.0.jar;%APP_HOME%\lib\commons-lang3-3.7.jar;%APP_HOME%\lib\jackson-annotations-2.9.9.jar;%APP_HOME%\lib\netty-codec-http-4.1.38.Final.jar;%APP_HOME%\lib\netty-handler-4.1.38.Final.jar;%APP_HOME%\lib\reactive-streams-1.0.2.jar;%APP_HOME%\lib\mongodb-driver-core-3.10.1.jar;%APP_HOME%\lib\bson-3.10.1.jar;%APP_HOME%\lib\jackson-core-2.9.9.jar;%APP_HOME%\lib\HdrHistogram-2.1.9.jar;%APP_HOME%\lib\netty-codec-socks-4.1.38.Final.jar;%APP_HOME%\lib\netty-codec-4.1.38.Final.jar;%APP_HOME%\lib\netty-transport-4.1.38.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.38.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.38.Final.jar;%APP_HOME%\lib\netty-common-4.1.38.Final.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\jboss-logging-3.3.2.Final.jar;%APP_HOME%\lib\classmate-1.3.4.jar;%APP_HOME%\lib\commons-configuration-1.8.jar;%APP_HOME%\lib\guava-16.0.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\commons-logging-1.1.1.jar

@rem Execute pets
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %PETS_OPTS%  -classpath "%CLASSPATH%" example.pets.Application %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable PETS_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%PETS_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
