param(
    [string]$fileName 
)

$content = Get-Content $fileName

$reversedContent = $content | ForEach-Object {
    $ws = $_ -split '\s+'
    $reverseWs = $ws[-1.. - ($ws.Count)]
    $reverseWs -join ' '
}


$reversedContent | Out-File -FilePath output.txt
Write-Host "Reversed content written to output.txt"