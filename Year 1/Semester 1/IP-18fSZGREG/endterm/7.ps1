param(
    [string]$fileName
)

$content = Get-Content $fileName -Raw

$words = $content -split '\s+' | Where-Object { $_ -ne '' }

$totalLength = $words | ForEach-Object { $_.length } |  Measure-Object -Sum | Select-Object -ExpandProperty Sum

$averageLength = [math]::Round($totalLength / $words.Count, 2)

Write-Host "Average length of words in '$filename': $averageLength"