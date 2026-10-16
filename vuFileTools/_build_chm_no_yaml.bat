@echo off
setlocal EnableExtensions EnableDelayedExpansion

rem ===== USER OPTIONS =====
set "PAUSE_ON_ERROR=1"
rem ========================

rem ===== PATHS =====
set "SRC=%~dp0"
set "OUT=%~dp0_site"
set "TMP=%~dp0_tmp"
set "LOG=%TMP%\build.log"
set "CSS=%SRC%style.css"
set "LUA=%SRC%link2html.lua"
set "ASSETS=%SRC%assets"
set "HHP=%SRC%vuFileTools.hhp"
set "HHCFILE=%SRC%toc.hhc"
set "PS1=%SRC%strip_yaml.ps1"
rem =================

rem --- helpers ---
set "READER=gfm-yaml_metadata_block"
set "CSSARG="
if exist "%CSS%" set "CSSARG=--css ""%CSS%"""
set "LUAARG="
if exist "%LUA%" set "LUAARG=--lua-filter ""%LUA%"""

if not exist "%TMP%" mkdir "%TMP%" >nul 2>nul

echo ================================================ > "%LOG%"
echo Build started: %DATE% %TIME% >> "%LOG%"
echo Running on: %PROCESSOR_ARCHITECTURE% >> "%LOG%"
echo ================================================ >> "%LOG%"

call :checkTool pandoc || goto :die
call :checkTool powershell || goto :die

if not exist "%PS1%" (
  echo ERROR: strip_yaml.ps1 not found at "%PS1%"
  echo ERROR: strip_yaml.ps1 not found at "%PS1%" >> "%LOG%"
  goto :die
)

echo. & echo Removing old _site...
if exist "%OUT%" rmdir /s /q "%OUT%"
mkdir "%OUT%"

echo. & echo Creating temp folder...
if exist "%TMP%" rmdir /s /q "%TMP%"
mkdir "%TMP%"
echo Log file: "%LOG%"

echo. & echo Copying assets (if any)...
if exist "%ASSETS%" (
  xcopy /e /i /y "%ASSETS%" "%OUT%\assets\" >nul
)

echo. & echo Converting .md -> .html (preserving folder structure)...
for /r "%SRC%" %%F in (*.md) do (
  set "SKIP="
  echo "%%F" | find /i "\_site\" >nul && set "SKIP=1"
  echo "%%F" | find /i "\_tmp\"  >nul && set "SKIP=1"
  if defined SKIP (
    rem skip files under _site or _tmp
  ) else (
    set "REL=%%F"
    set "REL=!REL:%SRC%=!"
    set "DEST=%OUT%\!REL!"
    set "DEST=!DEST:.md=.html!"
    for %%D in ("!DEST!") do mkdir "%%~dpD" >nul 2>nul

    set "TMPDEST=%TMP%\!REL!"
    for %%D in ("!TMPDEST!") do mkdir "%%~dpD" >nul 2>nul

    echo Stripping YAML: "%%F" ^> "!TMPDEST!"
    echo PS strip: "%%F" -> "!TMPDEST!" >> "%LOG%"
    powershell -NoProfile -ExecutionPolicy Bypass -File "%PS1%" "%%F" "!TMPDEST!" 1>>"%LOG%" 2>>"%LOG%"
    if errorlevel 1 (
      echo ERROR: strip_yaml.ps1 failed for "%%F"
      echo ERROR: strip_yaml.ps1 failed for "%%F" >> "%LOG%"
      goto :die
    )

    echo pandoc -s -f %READER% %LUAARG% %CSSARG% -o "!DEST!" "!TMPDEST!"
    echo PANDOC: "!TMPDEST!" -> "!DEST!" >> "%LOG%"
    pandoc -s -f %READER% %LUAARG% %CSSARG% -t html5 -o "!DEST!" "!TMPDEST!" 1>>"%LOG%" 2>>"%LOG%"
    if errorlevel 1 (
      echo ERROR: pandoc failed for "%%F"
      echo ERROR: pandoc failed for "%%F" >> "%LOG%"
      goto :die
    )
  )
)

echo. & echo Replicating style.css into each HTML folder...
if not exist "%CSS%" (
  echo WARNING: style.css not found at "%CSS%"
  echo WARNING: style.css not found at "%CSS%" >> "%LOG%"
) else (
  for /r "%OUT%" %%D in (.) do (
    dir /b "%%D\*.html" >nul 2>nul
    if not errorlevel 1 (
      copy /y "%CSS%" "%%D\" >nul
    )
  )
)

echo. & echo Copying HHP and HHC into _site...
if exist "%HHP%" copy /y "%HHP%" "%OUT%\" >nul
if exist "%HHCFILE%" copy /y "%HHCFILE%" "%OUT%\" >nul

if not exist "%OUT%\vuFileTools.hhp" (
  echo ERROR: vuFileTools.hhp not found in base folder.
  echo Place vuFileTools.hhp next to this batch file.
  echo ERROR: HHP missing >> "%LOG%"
  goto :die
)

rem Sanity check: ensure functions were generated
dir /b "%OUT%\functions\*.html" >nul 2>nul || (
  echo ERROR: No function pages found under "%OUT%\functions". Aborting.
  echo ERROR: No function pages found under "%OUT%\functions" >> "%LOG%"
  goto :die
)

echo. & echo Attempting CHM compile with HTML Help Workshop...
set "HHCEXE="
rem On 32-bit Windows: Program Files (no x86)
if exist "C:\Program Files\HTML Help Workshop\hhc.exe" set "HHCEXE=C:\Program Files\HTML Help Workshop\hhc.exe"
rem Also check PATH
if not defined HHCEXE (
  for /f "usebackq delims=" %%P in (`where hhc 2^>nul`) do set "HHCEXE=%%P"
)
rem Fallback for 64-bit installs when running 32-bit cmd
if not defined HHCEXE if exist "C:\Program Files (x86)\HTML Help Workshop\hhc.exe" set "HHCEXE=C:\Program Files (x86)\HTML Help Workshop\hhc.exe"

if defined HHCEXE (
  pushd "%OUT%"
  "%HHCEXE%" "vuFileTools.hhp" >> "%LOG%" 2>&1
  set "ERR=%ERRORLEVEL%"
  popd
  if "%ERR%"=="1" (
    echo.
    echo HHC reported errors. Review compiler output and "%LOG%".
  ) else (
    echo.
    echo Compile step finished. Check: "%OUT%\vuFileTools_v5.chm"
  )
) else (
  echo.
  echo hhc.exe not found. Opening the HHP in the GUI...
  start "" "%OUT%\vuFileTools.hhp"
)

echo. & echo Done.
if "%PAUSE_ON_ERROR%"=="1" pause
exit /b 0

:checkTool
where %1 >nul 2>nul
if errorlevel 1 (
  echo ERROR: %1 not found in PATH
  echo ERROR: %1 not found in PATH >> "%LOG%"
  exit /b 1
)
exit /b 0

:die
echo.
echo A fatal error occurred. See "%LOG%" for details.
if "%PAUSE_ON_ERROR%"=="1" pause
exit /b 1
