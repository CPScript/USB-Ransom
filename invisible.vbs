CreateObject("Wscript.Shell").Run """Win.au3""", 1, True
FSO.MoveFile "Desktop\Passwords.txt\","D:\pass\"

CreateObject("Wscript.Shell").Run """" & WScript.Arguments(0) & """", 0, False
