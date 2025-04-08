param(
    [Parameter(Mandatory = $true)]
    [string]$FilePath
)

$OutputFile = "$FilePath.hex.txt"

# Export to hex using certutil
certutil -encodehex $FilePath $OutputFile 0

Write-Host "✅ File exported to hex: $OutputFile"
