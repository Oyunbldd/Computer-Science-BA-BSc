param(
    [string]$fileName
)

function isPointInside($x, $y, $z, $radius) {
    $distance = [Math]::Sqrt(($x * $x) + ($y * $y) + ($z * $z))
    return $distance -lt $radius
}


Get-Content $fileName | ForEach-Object {

    $coordinates = $_ -split '\s+' -as [double[]]

    $x = $coordinates[0]
    $y = $coordinates[1]
    $z = $coordinates[2]
    $radius = $coordinates[3]

    $isInside = isPointInside $x $y $z $radius

    if ($isInside) {
        Write-Host "Point is inside"
    }
    else {
        Write-Host "Point is not inside"
    }

}