@echo off

:: VS2010
::SET VS90COMNTOOLS=%VS100COMNTOOLS%
:: VS2012
SET VS90COMNTOOLS=%VS110COMNTOOLS%
:: VS2013
::SET VS90COMNTOOLS=%VS120COMNTOOLS

::setenv /x64 /release
set MSSDK=1
set DISTUTILS_USE_SDK=1

python setup.py build
pause