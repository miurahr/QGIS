param ( [string]$SourceExe, [string]$DestinationPath, [string]$FullName, [string]$IconPath, , , [string]$WorkingDirectory, )
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut($DestinationPath)
$Shortcut.TargetPath = $SourceExe
$Shortcut.FullName = $FullName
$Shortcut.IconLocation = $IconPath
$Shortcut.WorkingDirectory = $WorkingDirectory
$Shortcut.Save()
