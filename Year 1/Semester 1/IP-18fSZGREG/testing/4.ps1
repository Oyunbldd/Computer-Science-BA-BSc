param(
    [string]$filename,
    [int]$minLength
)

$names = Get-Content $filename
$filteredNames = @()

#filtered section
foreach ($name in $names) {
    $firstName = ($name -split ' ')[0].Trim()
    
    if ($firstName.Length -gt $minLength) {
        $filteredNames += $firstName
    }
}

if ($filteredNames.Count -gt 0) {
    foreach ($name in $filteredNames) {
        Write-Host $name
    }
}
else {
    Write-Host "No names found"
}
