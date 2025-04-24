<#
.SYNOPSIS
    HexDump and Byte Extraction Tool

.DESCRIPTION
    This PowerShell script performs a hexadecimal dump of a target file and extracts its contents
    into a structured text file format for further analysis or educational inspection.

    The tool is designed as part of a personal cybersecurity and exploratory data analysis lab,
    allowing analysts and engineers to investigate binary structures, file signatures,
    and potential embedded payloads.

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







