@echo off

:: If no parameter is passed, list the available runtimes
if "%~1"=="" goto listruntimes

:: If some parameter is passed, check if a runtime is available
if %~1==Java1.8 (
    set "JAVA_HOME=C:\Program Files\Java\jdk1.8.0_202"
    goto foundit
)

if %~1==Java8 (
    set "JAVA_HOME=C:\Program Files\Java\zulu8.66.0.15-ca-jdk8.0.352-win_x64"
    goto foundit
)

if %~1==Java8_64 (
    set "JAVA_HOME=C:\Program Files\Java\zulu8.66.0.15-ca-jdk8.0.352-win_x64"
    goto foundit
)

if %~1==Java8_32 (
    set "JAVA_HOME=C:\Program Files\Java\zulu8.82.0.21-ca-fx-jdk8.0.432-win_i686"
    goto foundit
)

if %~1==Java11 (
    set "JAVA_HOME=C:\Program Files\Zulu\zulu-11"
    goto foundit
)

if %~1==Java11_64 (
    set "JAVA_HOME=C:\Program Files\Zulu\zulu-11"
    goto foundit
)

if %~1==Java11_32 (
    set "JAVA_HOME=C:\Program Files (x86)\Zulu\zulu-11_32"
    goto foundit
)

:: If no runtime is available, list the available runtimes
:listruntimes
echo List of available java runtimes:
echo Java1.8
echo Java8
echo Java8_64
echo Java8_32
echo Java11
echo Java11_64
echo Java11_32
exit /b

:foundit
:: Setup the selected runtime
set "PATH=%JAVA_HOME%\bin;%PATH%"
echo Java version switched to %~1
echo Path: %JAVA_HOME%
java -version

