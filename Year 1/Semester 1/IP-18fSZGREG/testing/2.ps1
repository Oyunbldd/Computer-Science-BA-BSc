param(
    [int]$decimalNumber
)

$binaryNumber = [System.Convert]::ToString($decimalNumber, 2)

Write-Host $binaryNumber