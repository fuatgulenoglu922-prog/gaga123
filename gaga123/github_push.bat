@echo off
echo XsSpekter GitHub Upload Script
echo ===============================
echo.

set /p username="GitHub Kullanıcı Adınız: "
echo.

echo Repository oluşturuluyor...
git remote add origin https://github.com/%username%/XsSpekter.git
git branch -M main

echo GitHub'a push ediliyor...
git push -u origin main

echo.
echo İşlem tamamlandı!
echo Projeniz: https://github.com/%username%/XsSpekter
echo.
pause
