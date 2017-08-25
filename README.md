1. Download this repository as zip, and then unzip it.
2. Copy your `accounts.js` from the old muledump folder into this one.
   Or if you're new to Muledump, fill out  `accounts_sample.js` and rename to `accounts.js` (this will be where your account information is stored)
3. Run LaunchMuledump.bat

-----------------------------
A command window should open and stay running in the background, and a webpage should open with your mules. 
Common Problems:
Check your accounts.js and make sure its this format,

	accounts = {
	'email1@test.com': 'pass1',
	'email2@test.com': 'pass2'
	}
	
------------------------------------------------------------
(V2 credit goes to snarticuno. All I did was shorten the installation process by creating the "launchMuledump.bat" and Regex.exe)
(Here is the contents of the regex.exe. If anyone knows of a better way to pull regex replace from inside of batch please let me know :D

	fileread,InputVar ,%1%
	find := "Ui)([\s\S]*')(.*@.*\..*)('.*')(.*)(',\s*\}[\s\S]*$|'(,))"
	replace := "`t{""user"":""$2"", ""password"":""$4""}$6`r`n"

	OutputVar := RegExReplace(InputVar, find, replace)
	OutputVar := "[`r`n" OutputVar "]"
	clipboard := OutputVar
)

License
------------------------------------------------------------
Copyright (c) 2013 atomizer

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
