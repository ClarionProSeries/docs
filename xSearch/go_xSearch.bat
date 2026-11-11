@echo off
setlocal EnableExtensions EnableDelayedExpansion
title xSearch 5.0 CHM Build - Build 248

rem xSearch CHM builder follows the ProSeries ProTOML build layout.
rem Launch this BAT from any working directory. All paths are relative to this BAT.
rem Always show results and wait before closing, including after an error.

set "SRC=%~dp0"
set "OUT=%SRC%_site"
set "TMP=%SRC%_tmp"
set "CSS=%SRC%style.css"
set "LUA=%SRC%md2html.lua"
set "ASSETS=%SRC%assets"
set "HHP=%SRC%xSearch.hhp"
set "HHCFILE=%SRC%toc.hhc"
set "PS1=%SRC%strip_yaml.ps1"
set "LOG=%SRC%chm_build.log"

>"%LOG%" echo xSearch 5.0 Build 248 - CHM build log
>>"%LOG%" echo Builder location: %SRC%

call :build
set "RESULT=%errorlevel%"
echo.
if "%RESULT%"=="0" (
  echo SUCCESS: xSearch CHM created at:
  echo   "%OUT%\xSearch.chm"
  >>"%LOG%" echo SUCCESS: %OUT%\xSearch.chm
) else (
  echo BUILD FAILED. Read the ERROR above and the log:
  echo   "%LOG%"
  >>"%LOG%" echo BUILD FAILED - code %RESULT%
)
echo.
echo Press any key to close this window.
pause >nul
exit /b %RESULT%

:build
call :say "Checking required files and tools..."
if not exist "%SRC%index.md" (
  call :problem "Missing index.md. Keep this BAT in xSearch\Docs\md_manual."
  exit /b 1
)
if not exist "%HHP%" (
  call :problem "Missing xSearch.hhp in Docs\md_manual."
  exit /b 1
)
if not exist "%HHCFILE%" (
  call :problem "Missing toc.hhc in Docs\md_manual."
  exit /b 1
)
if not exist "%CSS%" (
  call :problem "Missing style.css. Use the bundled stylesheet or your standard ProSeries style.css."
  exit /b 1
)
if not exist "%LUA%" (
  call :problem "Missing md2html.lua in Docs\md_manual."
  exit /b 1
)
if not exist "%PS1%" (
  call :problem "Missing strip_yaml.ps1 in Docs\md_manual."
  exit /b 1
)
where pandoc >nul 2>nul
if errorlevel 1 (
  call :problem "Pandoc is not on PATH. Install Pandoc or add it to PATH."
  exit /b 1
)
where powershell >nul 2>nul
if errorlevel 1 (
  call :problem "Windows PowerShell is not on PATH."
  exit /b 1
)

call :say "Cleaning generated _site and _tmp folders..."
if exist "%OUT%" rmdir /s /q "%OUT%"
if exist "%TMP%" rmdir /s /q "%TMP%"
if exist "%OUT%" (
  call :problem "Could not remove _site. Close the CHM or other files using it."
  exit /b 1
)
if exist "%TMP%" (
  call :problem "Could not remove _tmp. Close files using it."
  exit /b 1
)
mkdir "%OUT%" || exit /b 1
mkdir "%TMP%" || exit /b 1

call :say "Copying documentation assets..."
if exist "%ASSETS%" (
  xcopy /e /i /y "%ASSETS%" "%OUT%\assets\" >>"%LOG%" 2>&1
  if errorlevel 1 (
    call :problem "Could not copy documentation assets."
    exit /b 1
  )
)

call :say "Converting Markdown to HTML..."
set "CONVERSION_FAILED=0"
set /a PAGE_COUNT=0
for /r "%SRC%" %%F in (*.md) do (
  set "ABS=%%~fF"
  rem Ignore generated directories, which are under the source folder.
  if /i "!ABS:%OUT%=!"=="!ABS!" if /i "!ABS:%TMP%=!"=="!ABS!" (
    set "REL=!ABS:%SRC%=!"
    call :buildone "%%~fF" "!REL!"
    if errorlevel 1 (
      set "CONVERSION_FAILED=1"
    ) else (
      set /a PAGE_COUNT+=1
    )
  )
)
if "!CONVERSION_FAILED!"=="1" (
  call :problem "One or more Markdown pages failed to convert."
  exit /b 1
)
if "!PAGE_COUNT!"=="0" (
  call :problem "No Markdown pages were converted."
  exit /b 1
)
call :say "Converted !PAGE_COUNT! Markdown pages."

call :say "Copying stylesheet next to generated HTML..."
copy /y "%CSS%" "%OUT%\style.css" >nul || exit /b 1
for /d /r "%OUT%" %%D in (*) do (
  if exist "%%~fD\*.html" copy /y "%CSS%" "%%~fD\style.css" >nul
)

call :say "Copying the CHM project and contents files..."
copy /y "%HHP%" "%OUT%\xSearch.hhp" >nul || exit /b 1
copy /y "%HHCFILE%" "%OUT%\toc.hhc" >nul || exit /b 1

set "HHCEXE="
for /f "delims=" %%P in ('where hhc 2^>nul') do if not defined HHCEXE set "HHCEXE=%%P"
if not defined HHCEXE if exist "C:\Program Files\HTML Help Workshop\hhc.exe" set "HHCEXE=C:\Program Files\HTML Help Workshop\hhc.exe"
if not defined HHCEXE if exist "C:\Program Files (x86)\HTML Help Workshop\hhc.exe" set "HHCEXE=C:\Program Files (x86)\HTML Help Workshop\hhc.exe"
if not defined HHCEXE (
  call :problem "HTML Help Workshop hhc.exe was not found. HTML is ready under _site."
  echo Open "%OUT%\xSearch.hhp" in HTML Help Workshop to compile manually.
  exit /b 1
)

call :say "Compiling xSearch.chm with HTML Help Workshop..."
pushd "%OUT%"
"!HHCEXE!" "xSearch.hhp" >>"%LOG%" 2>&1
popd
rem hhc.exe can report a nonzero status even when its CHM output is valid.
if not exist "%OUT%\xSearch.chm" (
  call :problem "HTML Help Workshop did not create _site\xSearch.chm."
  exit /b 1
)
exit /b 0

:buildone
setlocal
set "SRCFILE=%~1"
set "REL=%~2"
set "TMPMD=%TMP%\%REL%"
set "OUTHTML=%OUT%\%REL%"
set "OUTHTML=%OUTHTML:.md=.html%"
for %%D in ("%TMPMD%") do if not exist "%%~dpD" mkdir "%%~dpD" >nul
for %%D in ("%OUTHTML%") do if not exist "%%~dpD" mkdir "%%~dpD" >nul
echo   %REL%
>>"%LOG%" echo Converting %REL%
powershell -NoProfile -ExecutionPolicy Bypass -File "%PS1%" "%SRCFILE%" "%TMPMD%" >>"%LOG%" 2>&1
if errorlevel 1 (
  echo ERROR: Could not strip YAML for %REL%
  endlocal & exit /b 1
)
pandoc -s -f gfm -L "%LUA%" -c style.css -t html5 -o "%OUTHTML%" "%TMPMD%" >>"%LOG%" 2>&1
if errorlevel 1 (
  echo ERROR: Pandoc failed for %REL%
  endlocal & exit /b 1
)
endlocal & exit /b 0

:say
echo %~1
>>"%LOG%" echo %~1
exit /b 0

:problem
echo ERROR: %~1
>>"%LOG%" echo ERROR: %~1
exit /b 1
