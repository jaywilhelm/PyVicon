@echo off

:: Set VS version
::SET VS90COMNTOOLS=%VS100COMNTOOLS%
::SET VS90COMNTOOLS=%VS110COMNTOOLS%
SET VS90COMNTOOLS=%VS140COMNTOOLS%
::setenv /x86 /release
set MSSDK=1
set DISTUTILS_USE_SDK=1
rmdir /S /Q build
copy /Y 32 .
REM C:\WPy32-3680\python-3.6.8\python.exe setup.py build
"%USERPROFILE%\Miniconda3\python.exe" -d setup.py build
if errorlevel 0 (
    copy build\lib.win32-3.6\pyvicon.cp36-win32.pyd .\pyvicon.pyd
)

echo %errorlevel%
pause
