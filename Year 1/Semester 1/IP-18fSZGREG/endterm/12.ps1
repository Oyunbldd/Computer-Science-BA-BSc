param(
    [string]$fileName
)

function IsSymmetric($word) {
    $reversedWord = -join $word.ToCharArray() | Sort-Object -Descending
    return $word -eq $reversedWord
}

$content = Get-Content $fileName -Raw
$words = $content -split '\s+'

$symmetricWords = $words | Where-Object { IsSymmetric }