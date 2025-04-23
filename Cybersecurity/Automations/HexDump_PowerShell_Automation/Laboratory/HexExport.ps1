# HexExport.ps1 - Exporta un archivo como dump hexadecimal tipo HxD

$imagePath = Join-Path -Path $PSScriptRoot -ChildPath "imagen_embebida.png"
$outputPath = Join-Path -Path $PSScriptRoot -ChildPath "imagen_hex_dump.txt"

$bytes = [System.IO.File]::ReadAllBytes($imagePath)
$lines = @()

for ($i = 0; $i -lt $bytes.Length; $i += 16) {
    $chunk = $bytes[$i..([Math]::Min($i + 15, $bytes.Length - 1))]
    $hex = ($chunk | ForEach-Object { "{0:X2}" -f $_ }) -join " "
    $ascii = ($chunk | ForEach-Object {
        if ($_ -ge 32 -and $_ -le 126) { [char]$_ } else { '.' }
    }) -join ""
    $lines += ("{0:X8}  {1,-47}  {2}" -f $i, $hex, $ascii)
}

$lines | Out-File -Encoding ASCII -FilePath $outputPath

Write-Host "`n📄 Hex dump generado: $outputPath" -ForegroundColor Cyan






