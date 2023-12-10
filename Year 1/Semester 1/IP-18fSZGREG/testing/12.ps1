param (
    [string]$FileName = $null
)

function TestSymmWs {
    param (
        [string]$w
    )

    $reversed = $w.ToCharArray()[-1.. - ($w.Length)] -join ''
    return $w -eq $reversed -and $w.Length -gt 1
}

function CopySymmWs {
    if (-not $FileName) {
        $FileName = Read-Host "Enter the filename"
    }

    if (Test-Path $FileName) {
        $content = Get-Content $FileName
        $symmWs = $content | Where-Object { TestSymmWs -w $_ }

        if ($symmWs.Count -gt 0) {
            $symmWs | Out-File -FilePath "same.txt"
            Write-Output "Symmetric words copied to file: same.txt"
        }
        else {
            Write-Host "No symmetric words found in the file."
        }
    }
    else {
        Write-Host "Error: File not found."
    }
}

# Call the function to copy symmetric words
CopySymmWs
