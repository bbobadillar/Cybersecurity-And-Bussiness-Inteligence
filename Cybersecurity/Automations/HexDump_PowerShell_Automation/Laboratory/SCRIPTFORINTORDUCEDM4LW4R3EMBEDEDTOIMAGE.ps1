# 🧪 Usa rutas completas para evitar problemas
$imagePath = "PUT YOUR FOLDER\IMG1.png"        # ⬅️ REEMPLAZA
$scriptPath = "PUT YOUR FOLDER\M4LW4R3.bat"
$outputImage = "PUT YOUR FOLDER\imagen_embebida.png"

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

