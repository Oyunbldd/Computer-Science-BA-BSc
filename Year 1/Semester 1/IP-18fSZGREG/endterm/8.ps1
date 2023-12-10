param (
    [string]$fileName,
    [string]$targetLastName
)


$entries = Get-Content $fileName

$filteredEntries = $entries | Where-Object { $_ -match "^$targetLastName\s" }

$phoneNumbers = $filteredEntries | ForEach-Object { ($_ -split ' ')[-1] }

$phoneNumbers | Out-File -FilePath "last.txt" -Append

Write-Host "Phone numbers for last name '$targetLastName' copied to last.txt."