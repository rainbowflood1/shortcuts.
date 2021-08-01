Set shell=CreateObject("wscript.shell")
pass=inputbox("Enter a Password")
if pass="1234" then Shell.Run("Notepad.exe") else msgbox("Incorrect Password!")