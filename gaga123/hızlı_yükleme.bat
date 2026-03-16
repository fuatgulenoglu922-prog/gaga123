@echo off
echo XsSpekter GitHub Hızlı Yükleme
echo ==============================
echo.

echo ADIM 1: GitHub'da Repository Oluştur
echo --------------------------------------
echo 1. https://github.com/new adresine gidin
echo 2. Sağ üstten "+" butonuna tıklayıp "New repository" seçin
echo 3. Repository name: XsSpekter
echo 4. Description: XsSpekter - Security Analysis Android App
echo 5. Public seçin
echo 6. "Create repository" deyin
echo.
pause

echo ADIM 2: Projeyi GitHub'a Yükle
echo --------------------------------
git remote add origin https://github.com/fuatgulenoglu922-prog/XsSpekter.git
git branch -M main
git push -u origin main

echo.
echo YÜKLEME TAMAMLANDI!
echo Projeniz: https://github.com/fuatgulenoglu922-prog/XsSpekter
echo.
pause
