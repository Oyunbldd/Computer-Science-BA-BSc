param(
    [int]$a = (Read-Host "Enter your a value"),
    [int]$b = (Read-Host "Enter your b value"),
    [int]$c = (Read-Host "Enter your c value"),
    [int]$d = (Read-Host "Enter your d value"),
    [int]$N = (Read-Host "Enter your n value"),
    [int]$M = (Read-Host "Enter your m value")
)


for ($i = $N ; $i -le $M ; $i++) {
    $ans = $a * [Math]::Pow($i , 3) + $b * [Math]::Pow($i, 2) + $c * $i + $d
    Write-Host $ans
}