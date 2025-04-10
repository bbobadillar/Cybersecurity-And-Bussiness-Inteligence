# 🧪 Usa rutas completas para evitar problemas
$imagePath = "C:\Users\Bryan Bobadilla\Documents\Cyber_BI_Repo\Cyber_BI_Repo\Cybersecurity\Automations\HexDump_PowerShell_Automation\Laboratory\IMG1.png"        # ⬅️ REEMPLAZA
$scriptPath = "C:\Users\Bryan Bobadilla\Documents\Cyber_BI_Repo\Cyber_BI_Repo\Cybersecurity\Automations\HexDump_PowerShell_Automation\Laboratory\M4LW4R3.bat"
$outputImage = "C:\Users\Bryan Bobadilla\Documents\Cyber_BI_Repo\Cyber_BI_Repo\Cybersecurity\Automations\HexDump_PowerShell_Automation\Laboratory\imagen_embebida.png"

# 📥 Leer bytes de la imagen y del script
$imageBytes = Get-Content $imagePath -Encoding Byte
$scriptBytes = Get-Content $scriptPath -Encoding Byte

# 📦 Combinar ambos arrays de bytes
$combinedBytes = $imageBytes + $scriptBytes

# ✅ Guardar la imagen modificada
[System.IO.File]::WriteAllBytes($outputImage, $combinedBytes)

# 📂 Confirmación visual
if (Test-Path $outputImage) {
    Write-Host "`n✅ imagen_embebida.png fue creada exitosamente." -ForegroundColor Green
    Start-Process explorer.exe -ArgumentList "/select,$outputImage"
} else {
    Write-Host "`n❌ Error: No se pudo crear la imagen embebida." -ForegroundColor Red
}
