@if (@CodeSection == @Batch) @then
@echo off

if exist muledump2.exe (
	echo found muledump2.exe ... 
) else (
	echo did not find muledump2.exe ... 
	pause
	goto :EOF
)

echo Transfering data from accounts.js to Muledump
Regex.exe accounts.js

setlocal
set "getclip=cscript /nologo /e:JScript "%~f0""
%getclip% > config.json

echo Launching Webpage
start "" http://localhost:5353/muledump.html
echo Launching Muledump.exe
muledump-2-master.exe "config.json"
echo Error: Most likely cause, Error in "accounts.js" please check accounts.js
pause
goto :EOF

:: ####################################################

@end // begin JScript hybrid chimera
WSH.Echo(WSH.CreateObject('htmlfile').parentWindow.clipboardData.getData('text'));
