<#
.SYNOPSIS
    HexDump and Byte Extraction Tool

.DESCRIPTION
    This PowerShell script simulates the technique of embedding a batch file payload at the end of an image file.
    The final bits of the image are appended with the batch file content in a way that remains visually                 undetectable.
    
    This method is often used in cybersecurity labs to study file obfuscation, steganography, and incident              response.
    It is an inoffensive educational simulation and does NOT execute any malicious actions by itself.


.AUTHOR
    © 2025 Bryan Bobadilla (Cybersecurity & BI Specialist)
    LinkedIn: https://www.linkedin.com/in/bryan-bobadilla/
    GitHub: https://github.com/bbobadillar

.NOTES
    For educational use only. This tool is distributed for learning, personal R&D, and responsible testing.
    Unauthorized use in production environments or against third-party systems is not permitted.

.VERSION
    1.0.0

.LICENSE
    MIT License (except for commercial redistribution)

.ENJOY
    Explore, learn, and analyze with passion. Stay curious and stay secure. ❤️🔐
#>


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







