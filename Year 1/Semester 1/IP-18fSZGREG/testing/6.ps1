function rtoint {
    param (
        [string]$rn = (Read-Host "Enter a Roman numeral")
    )

    $rnMap = @{
        'I' = 1
        'V' = 5
        'X' = 10
        'L' = 50
        'C' = 100
        'D' = 500
        'M' = 1000
    }

    $intVal = 0
    $prevVal = $rnMap[$rn[-1]]

    for ($i = $rn.Length - 1; $i -ge 0; $i--) {
        $currVal = $rnMap["$($rn[$i])"]

        if ($currVal -lt $prevVal) {
            $intVal -= $currVal
        }
        else {
            $intVal += $currVal
        }

        $prevVal = $currVal
    }

    Write-Output "Decimal value for $rn is: $intVal"
}

rtoint
