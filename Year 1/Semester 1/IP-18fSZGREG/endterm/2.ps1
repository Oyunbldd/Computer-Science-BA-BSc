function Convert-ToBinary {
    param(
        [int]$decimalNumber
    )
    $binary = [Convert]::ToString($decimalNumber, 2)
    return $binary
}

$decimalNumber = Read-Host 

$ans = Convert-ToBinary $decimalNumber
Write-Host $ans