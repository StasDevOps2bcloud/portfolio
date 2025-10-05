#STOP
$ShortcutPath = [System.IO.Path]::Combine($env:USERPROFILE, "Desktop", "Dalia-Stop-Hilan-VM.lnk")
$TargetPath = "powershell.exe"
$Arguments = "-NoExit -Command &{cls;Invoke-WebRequest -Method Post -Uri https://9f6a8358-7011-4c25-b760-33eb94f7f8ab.webhook.we.azure-automation.net/webhooks?token=<Azure Runbook WebHook Token>}"
$IconPath = "C:\Windows\UUS\amd64\WindowsUpdateImportant.ico"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutPath)
$Shortcut.IconLocation = $IconPath
$Shortcut.TargetPath = $TargetPath
$Shortcut.Arguments = $Arguments
$Shortcut.Save()

#START
$ShortcutPath = [System.IO.Path]::Combine($env:USERPROFILE, "Desktop", "Dalia-Start-Hilan-VM.lnk")
$TargetPath = "powershell.exe"
$Arguments = "-NoExit -Command &{cls;Invoke-WebRequest -Method Post -Uri https://9f6a8358-7011-4c25-b760-33eb94f7f8ab.webhook.we.azure-automation.net/webhooks?token=<Azure Runbook WebHook Token>}"
$IconPath = "C:\Windows\UUS\amd64\WindowsUpdateSeeker.ico"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutPath)
$Shortcut.IconLocation = $IconPath
$Shortcut.TargetPath = $TargetPath
$Shortcut.Arguments = $Arguments
$Shortcut.Save()
