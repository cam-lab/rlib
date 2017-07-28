@echo off

set DISABLE_QMAKE_DEFAULT_BUILD=1
set USE_VS_BUILD=0

if "%1"=="" (
	set TOPDIR=.
) else (
	set TOPDIR=%1
)

del %TOPDIR%\Makefile.*
del %TOPDIR%\src\bufpool\Makefile.*
del %TOPDIR%\src\streamtester\Makefile.*

del %TOPDIR%\*.sln
del %TOPDIR%\src\bufpool\*.vcxproj.*
del %TOPDIR%\src\streamtester\*.vcxproj.*


rd  %TOPDIR%\build /S /Q 
rd  %TOPDIR%\bin /S /Q 

if %DISABLE_QMAKE_DEFAULT_BUILD%==0 (
	rd  %TOPDIR%\src\bufpool\debug /S /Q 
	rd  %TOPDIR%\src\bufpool\release /S /Q

	rd  %TOPDIR%\src\streamtester\debug /S /Q 
	rd  %TOPDIR%\src\streamtester\release /S /Q
)

if %USE_VS_BUILD%==1 (
	rd  %TOPDIR%\src\bufpool\x64 /S /Q
	rd  %TOPDIR%\src\streamtester\x64 /S /Q
)
