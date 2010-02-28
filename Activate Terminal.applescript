on AppRunning()
	tell application "System Events" to set appIsRunning to exists (processes where name is "Terminal")
	return appIsRunning
end AppRunning

if AppRunning() then
	tell application "Terminal"
		activate
	end tell
else
	do shell script "open -a /Applications/Utilities/Terminal.app"
end if
