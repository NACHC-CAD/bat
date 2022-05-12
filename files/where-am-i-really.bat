@echo off
echo.
echo.
echo ------
echo Cloned from:
git config --get remote.origin.url
echo ------
echo.
echo ------
:: get the branch
git rev-parse --abbrev-ref HEAD > temp.txt
set /p branch=<temp.txt
echo Branch: %branch%
:: get the date
git show -s --format=%%ci > temp.txt
set /p date=<temp.txt
echo Date:   %date%
:: get the hash
git show -s --format=%%H > temp.txt
set /p sha=<temp.txt
echo SHA:    %sha%
:: clean up
del temp.txt
:: done
echo ------
echo.
echo.
echo Done.
echo.
echo.


