@echo off
setlocal enabledelayedexpansion

rem ===== PATHS =====
set "SRC=%~dp0"
set "OUT=%~dp0_site"
set "CSS=%SRC%style.css"
set "LUA=%SRC%link2html.lua"
set "ASSETS=%SRC%assets"
set "HHP=%SRC%vuFileTools.hhp"
set "HHCFILE=%SRC%toc.hhc"
rem =================

echo.
where pandoc >nul 2>nul
if errorlevel 1 (
  echo ERROR: pandoc not found in PATH
  exit /b 1
)

echo.
echo Removing old _site...
if exist "%OUT%" rmdir /s /q "%OUT%"
mkdir "%OUT%"

echo.
echo Copying assets (if any)...
if exist "%ASSETS%" (
  xcopy /e /i /y "%ASSETS%" "%OUT%\assets\" >nul
)

echo.
echo Converting .md -> .html (preserving folder structure)...
for /r "%SRC%" %%F in (*.md) do (
  echo "%%F" | find /i "_site\" >nul
  if errorlevel 1 (
    set "REL=%%F"
    set "REL=!REL:%SRC%=!"
    set "DEST=%OUT%\!REL!"
    set "DEST=!DEST:.md=.html!"
    for %%D in ("!DEST!") do mkdir "%%~dpD" >nul 2>nul
    echo pandoc "%%F" -s -f gfm --lua-filter "%LUA%" --css "%CSS%" -o "!DEST!"
    pandoc "%%F" -s -f gfm --lua-filter "%LUA%" --css "%CSS%" -o "!DEST!"
  )
)

echo.
echo Replicating style.css into each HTML folder...
if not exist "%CSS%" (
  echo WARNING: style.css not found at "%CSS%"
) else (
  for /r "%OUT%" %%D in (.) do (
    dir /b "%%D\*.html" >nul 2>nul
    if not errorlevel 1 (
      copy /y "%CSS%" "%%D\" >nul
    )
  )
)

echo.
echo Copying HHP and HHC into _site...
if exist "%HHP%" copy /y "%HHP%" "%OUT%\" >nul
if exist "%HHCFILE%" copy /y "%HHCFILE%" "%OUT%\" >nul

if not exist "%OUT%\vuFileTools.hhp" (
  echo ERROR: vuFileTools.hhp not found in base folder.
  echo        Place vuFileTools.hhp next to this batch file.
  exit /b 1
)
if not exist "%OUT%\toc.hhc" (
  echo WARNING: toc.hhc not found in base folder. Place toc.hhc next to this batch file.
)

rem Sanity check: ensure functions were generated
dir /b "%OUT%\functions\*.html" >nul 2>nul || (
  echo ERROR: No function pages found under "%OUT%\functions". Aborting.
  exit /b 1
)

echo.
echo Attempting CHM compile with HTML Help Workshop...
set "HHCEXE="
where hhc >nul 2>nul && for /f "usebackq delims=" %%P in (`where hhc`) do set "HHCEXE=%%P"
if not defined HHCEXE if exist "C:\Program Files (x86)\HTML Help Workshop\hhc.exe" set "HHCEXE=C:\Program Files (x86)\HTML Help Workshop\hhc.exe"

if defined HHCEXE (
  pushd "%OUT%"
  "%HHCEXE%" "vuFileTools.hhp"
  set "ERR=%ERRORLEVEL%"
  popd
  if "%ERR%"=="1" (
    echo.
    echo HHC reported errors. Review the compiler output above.
    echo You can also open "%OUT%\vuFileTools.hhp" in the GUI to inspect.
  ) else (
    echo.
    echo Compile step finished. Output should be at: "%OUT%\vuFileTools_v5.chm"
  )
) else (
  echo.
  echo hhc.exe not found. Opening the HHP so you can compile in the GUI...
  start "" "%OUT%\vuFileTools.hhp"
)

echo.
echo Done.
exit /b 0
