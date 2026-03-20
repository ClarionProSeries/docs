@echo off
setlocal enabledelayedexpansion

rem ===== PATHS =====
set "SRC=%~dp0"
set "OUT=%SRC%_site"
set "TMP=%SRC%_tmp"
set "CSS=%SRC%style.css"
set "LUA=%SRC%md2html.lua"
set "ASSETS=%SRC%assets"
set "HHP=%SRC%vuFileTools.hhp"
set "HHCFILE=%SRC%toc.hhc"
set "PS1=%SRC%strip_yaml.ps1"
rem =================

echo.
echo Cleaning _site and _tmp...
if exist "%OUT%" rmdir /s /q "%OUT%"
if exist "%TMP%" rmdir /s /q "%TMP%"
mkdir "%OUT%"
mkdir "%TMP%"

echo.
echo Copying assets (if any)...
if exist "%ASSETS%" (
  xcopy /e /i /y "%ASSETS%" "%OUT%\assets\" >nul
)

echo.
echo Converting .md -> .html (mirroring folders)...
for /r "%SRC%" %%F in (*.md) do (
  set "ABS=%%~fF"
  rem skip anything under _site or _tmp
  if /i "!ABS:%OUT%=!"=="!ABS!" if /i "!ABS:%TMP%=!"=="!ABS!" (
    set "REL=!ABS:%SRC%=!"
    call :buildone "%%~fF" "!REL!"
  )
)

echo.
echo Replicating style.css into each HTML folder...
if exist "%CSS%" (
  for /r "%OUT%" %%D in (.) do (
    dir /b "%%D\*.html" >nul 2>nul
    if not errorlevel 1 copy /y "%CSS%" "%%D\" >nul
  )
)

echo.
echo Copying HHP and HHC into _site...
if exist "%HHP%" copy /y "%HHP%" "%OUT%\" >nul
if exist "%HHCFILE%" copy /y "%HHCFILE%" "%OUT%\" >nul

if not exist "%OUT%\vuFileTools.hhp" (
  echo ERROR: vuFileTools.hhp not found in base folder.
  exit /b 1
)

echo.
echo Compiling CHM with HTML Help Workshop...
set "HHCEXE="
where hhc >nul 2>nul && for /f "usebackq delims=" %%P in (`where hhc`) do set "HHCEXE=%%P"
if not defined HHCEXE if exist "C:\Program Files\HTML Help Workshop\hhc.exe" set "HHCEXE=C:\Program Files\HTML Help Workshop\hhc.exe"
if not defined HHCEXE if exist "C:\Program Files (x86)\HTML Help Workshop\hhc.exe" set "HHCEXE=C:\Program Files (x86)\HTML Help Workshop\hhc.exe"

if defined HHCEXE (
  pushd "%OUT%"
  "%HHCEXE%" "vuFileTools.hhp"
  popd
) else (
  echo hhc.exe not found. Open "%OUT%\vuFileTools.hhp" manually.
)

echo.
echo Done.
exit /b 0


:buildone
rem %1 = full source path, %2 = relative path under SRC
set "SRCFILE=%~1"
set "REL=%~2"
set "TMPMD=%TMP%\%REL%"
set "OUTHTML=%OUT%\%REL%"
set "OUTHTML=%OUTHTML:.md=.html%"

for %%D in ("%TMPMD%")  do if not exist "%%~dpD" mkdir "%%~dpD" >nul
for %%D in ("%OUTHTML%") do if not exist "%%~dpD" mkdir "%%~dpD" >nul

echo Stripping YAML: "%SRCFILE%" ^> "%TMPMD%"
powershell -NoProfile -ExecutionPolicy Bypass -File "%PS1%" "%SRCFILE%" "%TMPMD%"
if errorlevel 1 (
  echo WARN: strip failed; copying source to temp.
  copy /y "%SRCFILE%" "%TMPMD%" >nul
)

rem Pandoc build
if exist "%LUA%" (
  if exist "%CSS%" (
    pandoc -s -f gfm -L "%LUA%" -c "%CSS%" -t html5 -o "%OUTHTML%" "%TMPMD%"
  ) else (
    pandoc -s -f gfm -L "%LUA%" -t html5 -o "%OUTHTML%" "%TMPMD%"
  )
) else (
  if exist "%CSS%" (
    pandoc -s -f gfm -c "%CSS%" -t html5 -o "%OUTHTML%" "%TMPMD%"
  ) else (
    pandoc -s -f gfm -t html5 -o "%OUTHTML%" "%TMPMD%"
  )
)

exit /b 0
