:: Important stuff, original file from GA Wrapper
@echo off && cls
title Wrapper: Online

::::::::::::::::::::
:: Initialization ::
::::::::::::::::::::

:: Terminate existing node.js apps
TASKKILL /IM node.exe /F 2>nul
cls

:::::::::::::::::::::::::::::
:: Start Wrapper: Online   ::
:::::::::::::::::::::::::::::

:: Check for installation
if exist notinstalled (
	echo Wrapper: Online is not installed! Installing...
	call npm install
	ren "notinstalled" "installed"
	cls
	goto start
) else (
	goto start
)

:: Run npm start
:start
echo Wrapper: Online is now starting...
echo Please navigate to http://localhost on your browser.
npm start
