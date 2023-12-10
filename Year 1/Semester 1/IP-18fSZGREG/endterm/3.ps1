
for ($i = 1; $i -le 10; $i++) {
    for ($j = 1; $j -le 10; $j++) {
        $result = $i * $j 
        Write-Host "$i*$j = $result"
    }
    Write-Host "---------------------"
}