:: Copyright (c) 2018-2020 Peter Fritz
::
:: This Source Code Form is subject to the terms of the Mozilla Public
:: License, v. 2.0. If a copy of the MPL was not distributed with this
:: file, You can obtain one at https://mozilla.org/MPL/2.0/.

@echo off
title Test File Generator by Peter Fritz
mode con: cols=50 lines=6
color 0a

::welcome

echo Welcome to the Test File Generator
echo This script will generate the given number of files in it's parent folder.
echo Press 'Enter' to start.
pause >nul

::function

cls
set /P FC=Do you want to generate[g/G] or delete[d/D] files? 
if %FC%==g goto generate
if %FC%==G goto generate
If %FC%==d goto delete
If %FC%==D goto delete
exit

::generate

:generate
cls
set /P FL=Quantos arquivos deseja gerar? 
cls
set FN=1
:genLoopTop
echo %FN% > %FN%.txt
echo %FN%/%FL%
if %FN%==%FL% goto generateDone
set /A FN=%FN%+1
goto genLoopTop
:generateDone
cls
echo Files generated successfully.
echo Thank you for using the Test File Generator.
echo Press 'Enter' to exit.
pause >nul
exit

::delete

:delete
cls
set FN=1
:delLoopTop
del %FN%.txt
cls
set /A FN=%FN%+1
if not exist %FN%.txt goto delDone
goto delLoopTop
:delDone
echo Files deleted successfully.
echo Thank you for using the Test File Generator.
echo Press 'Enter' to exit.
pause >nul
exit
