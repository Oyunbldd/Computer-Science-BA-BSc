param (
    [string]$fileName
)

$content = Get-Content $fileName

$reversedContent = $content[-1.. - ($content.Count)] | ForEach-Object {
    $words = $_ -split '\s+'
    [array]::Reverse($words)
    $words -join ' '
}

$reversedContent | Out-File -FilePath output.txt
Write-Host "Reversed content written to output.txt"