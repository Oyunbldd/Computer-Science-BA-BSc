# function Calculate-Polynamial {
#     param (
#         [int]$a,
#         [int]$b,
#         [int]$c,
#         [int]$d,
#         [int]$x
#     )

#     $result = $a * [Math]::Pow($x , 3) + $b * [Math]::Pow($x , 2) + $c * $x + $d
#     return $result
    
# }

# $a = Read-Host
# $b = Read-Host
# $c = Read-Host
# $d = Read-Host

# #reading range
# $N = Read-Host "Enter the starting value N"
# $M = Read-Host "Enter the ending value M"

# for ($x = $N; $x -le $M; $x++) {
#     $result = Calculate-Polynamial -a $a -b $b -c $c -d $d -x $x
#     Write-Host "For x = $x, Result = $result"
# }