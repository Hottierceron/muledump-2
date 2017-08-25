@if (@CodeSection == @Batch) @then
@echo off

if exist muledump-2-master.exe (
    rem file exists
	echo found muledump-2-master.exe ... skipping Go build
) else (
    rem file doesn't exist
	echo not found muledump-2-master.exe ... Running Go Build initial install
	C:\Go\bin\go.exe build -o muledump-2-master.exe
)

echo updating accounts
Regex.exe accounts.js

setlocal
set "getclip=cscript /nologo /e:JScript "%~f0""
%getclip% > config.json


start "" http://localhost:5353/muledump.html
echo Executing script
muledump-2-master.exe "config.json"
echo Error: Most likely cause, Error in "accounts.js" please check
pause
goto :EOF

:: ####################################################

@end // begin JScript hybrid chimera
WSH.Echo(WSH.CreateObject('htmlfile').parentWindow.clipboardData.getData('text'));
