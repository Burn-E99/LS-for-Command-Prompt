@echo off

setlocal EnableDelayedExpansion

set "EXECUTABLEEXT=.COM .EXE .BAT .CMD .VBS .VBE .JS .JSE .WSF .WSH .PSC1"
set "ARCHIVEEXT=.ZIP .7Z .RAR .TAR.GZ .TAR .GZ .JAR .CAB .PKG .DEB .RZR .7ZIP .RPM"
set "IMAGEEXT=.PNG .JPEG .JPG .GIF .BMP .TIF .TIFF .JIF .JIFF"
set "LINKEXT=.LNK"

set "FOLDERCOLOR=09"
set "EXECUTABLECOLOR=02"
set "ARCHIVECOLOR=0C"
set "IMAGECOLOR=0D"
set "LINKCOLOR=0B"

for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a")

call :getdir

for /f "tokens=*" %%F in ('dir /W /B /A') do (
	set "LINECOLOR=07"
	set "TEMPNAME=%%F"
	set "REALNAME=%%F"
	
	REM start %HOMEDIR%\hi.cmd
	
	set "FOLDERTEST=%CD%\!REALNAME!\*"
	
	if exist !FOLDERTEST! (
		set "LINECOLOR=%FOLDERCOLOR%"
	)
	
	for %%E in (%EXECUTABLEEXT%) do (
		if not "!TEMPNAME!"=="!TEMPNAME:%%E=!" (
			set "LINECOLOR=%EXECUTABLECOLOR%"
		)
	)
	
	for %%E in (%ARCHIVEEXT%) do (
		if not "!TEMPNAME!"=="!TEMPNAME:%%E=!" (
			set "LINECOLOR=%ARCHIVECOLOR%"
		)
	)
	
	for %%E in (%IMAGEEXT%) do (
		if not "!TEMPNAME!"=="!TEMPNAME:%%E=!" (
			set "LINECOLOR=%IMAGECOLOR%"
		)
	)
	
	for %%E in (%LINKEXT%) do (
		if not "!TEMPNAME!"=="!TEMPNAME:%%E=!" (
			set "LINECOLOR=%LINKCOLOR%"
		)
	)
	
	cecho {!LINECOLOR!} !REALNAME! {#}{\n}
)

goto :eof
:getdir
pushd %~dp0
set "HOMEDIR=%CD%"
popd
goto :eof