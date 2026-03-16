@echo off
title XsSpekter - Tek Tık GitHub Yükleme
color 0A
echo.
echo ╔════════════════════════════════════════╗
echo ║   XsSpekter GitHub Otomatik Yükleme    ║
echo ╚════════════════════════════════════════╝
echo.

echo [1/3] GitHub repository kontrol ediliyor...
timeout /t 2 >nul

echo [2/3] Proje GitHub'a yükleniyor...
git remote add origin https://github.com/fuatgulenoglu922-prog/XsSpekter.git 2>nul
git branch -M main
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ╔════════════════════════════════════════╗
    echo ║        ✅ YÜKLEME BAŞARILI!           ║
    echo ╚════════════════════════════════════════╝
    echo.
    echo 🔗 Proje Linki: https://github.com/fuatgulenoglu922-prog/XsSpekter
    echo 📱 APK Build: build_apk.bat
    echo.
) else (
    echo.
    echo ❌ HATA: GitHub repository'si henüz oluşturulmadı!
    echo.
    echo ÇÖZÜM:
    echo 1. Açılan GitHub sayfasında "Create repository" deyin
    echo 2. Bu script'i tekrar çalıştırın
    echo.
    echo GitHub Link: https://github.com/new?name=XsSpekter&description=XsSpekter%%20-%%20Security%%20Analysis%%20Android%%20App&visibility=public
    start "https://github.com/new?name=XsSpekter&description=XsSpekter%%20-%%20Security%%20Analysis%%20Android%%20App&visibility=public"
)

pause
