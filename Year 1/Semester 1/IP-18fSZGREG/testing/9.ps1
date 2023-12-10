param (
    [int]$N,
    [int]$M
)

# Check if N is smaller than M, if not, swap their values
if ($N -ge $M) {
    Write-Host "Swapping values: N is not smaller than M."
    $temp = $N
    $N = $M
    $M = $temp
}

# Write out odd numbers between N and M
Write-Host "Odd numbers between $N and $M"
for ($i = $N; $i -le $M; $i++) {
    if ($i % 2 -ne 0) {
        Write-Host -NoNewline "$i "
    }
}