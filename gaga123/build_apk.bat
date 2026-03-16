@echo off
echo Building XsSpekter APK...
echo.

REM Check if Java is installed
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Java is not installed or not in PATH
    echo Please install Java JDK and try again
    pause
    exit /b 1
)

REM Create debug keystore if it doesn't exist
if not exist "app\debug.keystore" (
    echo Creating debug keystore...
    echo You need to have Java JDK installed with keytool in PATH
    echo Run this command manually to create keystore:
    echo keytool -genkey -v -keystore app\debug.keystore -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=Android Debug,O=Android,C=US"
    echo.
)

REM Build the APK
echo Building release APK...
call gradlew.bat assembleRelease

if %errorlevel% equ 0 (
    echo.
    echo APK build successful!
    echo APK location: app\build\outputs\apk\release\app-release.apk
    echo.
    echo You can now upload this APK to GitHub releases
) else (
    echo.
    echo APK build failed!
    echo Please check the errors above
)

pause
