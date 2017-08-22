1. Download this repository as zip, and then unzip it.
2. Download and install GoLang ``` https://golang.org/dl/ ```
3. Copy your "accounts.js" from the old muledump folder, or modify "accounts_sample.js" and rename to "accounts.js"
4. Run LaunchMuledump.bat

A command window should open and stay running in the background, and a webpage should open with your mules. 

(All credit goes to snarticuno. All I did was shorten the installation process by creating the "launchMuledump.bat" and Regex.exe)
(Here is the contents of the regex.exe. If anyone knows of a better way to pull regex replace from inside of batch please let me know :D
	fileread,InputVar ,%1%
	find := "Ui)([\s\S]*')(.*@.*\..*)('.*')(.*)(',\s*\}[\s\S]*$|'(,))"
	replace := "`t{""user"":""$2"", ""password"":""$4""}$6`r`n"

	OutputVar := RegExReplace(InputVar, find, replace)
	OutputVar := "[`r`n" OutputVar "]"
	clipboard := OutputVar
)
