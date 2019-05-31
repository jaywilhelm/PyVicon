@echo off

:: Set VS version
::SET VS90COMNTOOLS=%VS100COMNTOOLS%
::SET VS90COMNTOOLS=%VS110COMNTOOLS%
SET VS90COMNTOOLS=%VS140COMNTOOLS%
::setenv /x64 /release
set MSSDK=1
set DISTUTILS_USE_SDK=1
rmdir /S /Q build
copy /Y 64 .

C:\WPy64-3680\python-3.6.8.amd64\python.exe setup.py build
REM "%USERPROFILE%\Miniconda3\python.exe" -d setup.py build
if errorlevel 0 (
	copy build\lib.win-amd64-3.6\pyvicon.cp36-win_amd64.pyd .\pyvicon.pyd
)

echo %errorlevel%
pause

REM https://stackoverflow.com/questions/14372706/visual-studio-cant-build-due-to-rc-exe
