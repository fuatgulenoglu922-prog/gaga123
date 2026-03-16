# GitHub Upload Instructions

## Steps to upload APK to GitHub:

### 1. Create GitHub Repository
1. Go to https://github.com and create a new repository named "XsSpekter"
2. Don't initialize with README (we already have one)
3. Copy the repository URL

### 2. Push to GitHub
```bash
git remote add origin https://github.com/YOUR_USERNAME/XsSpekter.git
git branch -M main
git push -u origin main
```

### 3. Build APK
Run the build script:
```bash
build_apk.bat
```

### 4. Create GitHub Release
1. Go to your repository on GitHub
2. Click "Releases" → "Create a new release"
3. Tag version: `v1.0`
4. Release title: `XsSpekter v1.0`
5. Description: `Initial release of XsSpekter security analysis app`
6. Upload the APK file from: `app/build/outputs/apk/release/app-release.apk`
7. Click "Publish release"

### 5. Share the APK
Users can download the APK from:
`https://github.com/YOUR_USERNAME/XsSpekter/releases/download/v1.0/app-release.apk`

## Notes:
- Make sure you have Java JDK installed
- The APK will be signed with debug keystore (for testing)
- For production, create a proper release keystore
