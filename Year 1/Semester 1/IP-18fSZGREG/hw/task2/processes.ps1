param(
    [string]$action
)


function startProcess {
    $appName = Read-Host "Enter your application name"

    #Generating random pid
    $processId = (Get-Random -Minimum 1 -Maximum 1000)
    $newProcess = "$processId S $appName"

    Add-Content -Path "actuals.dat" -Value $newProcess
    Write-Host "Started process $appName with PID $processId"
}


function stopProcess {
    $processFile = "actuals.dat"
    $processId = Read-Host "Enter your PID"

if(Test-Path $processFile){

    $processes = Get-Content $processFile
    $index = -1

    $processes = $processes | ForEach-Object {
        if ($_ -match "^$processId\s") {
            $_  -replace ("^$processId S ", "$processId T ")
            $index = 0
        } else {
            $_
        }
    }

    if ($index -ne -1) {
        Set-Content -Path "actuals.dat" -Value $processes
        Write-Host "Stopped process with PID $processId."
    }
    else {
        Write-Host "Process with PID $processId not found."
    }

}  else{
    Write-Host "file not founded"
 }
}


function killProcess {
    $processFile = "actuals.dat"
    $processId = Read-Host "Enter your PID"
    if(Test-Path $processFile){

    $processes = Get-Content $processFile
    $processes = $processes| Where-Object { $_ -notmatch "^$processId\s" }

    Set-Content -Path "actuals.dat" -Value $processes
    Write-Host "Killed process with PID $processId."
} else{
    Write-Host "file not founded"
 }
}

function listProcess {
    $processFile = "actuals.dat"
    

 if(Test-Path $processFile){
    $processes = Get-Content  $processFile
    Write-Host "PID   Status   Appname"
    foreach ($process in $processes) {
        $processId, $status, $appName = $process -split " "
        Write-Host "$processId     $status      $appName"
    }
 }else{
    Write-Host "file not founded"
 }
 
}


if ($action -eq "-start") {
     startProcess
}
elseif ($action -eq "-stop") {
    stopProcess 
}
elseif ($action -eq "-kill") {
    killProcess
}
elseif ($action -eq "-list") {
    listProcess
}
else {
    Write-Host "Invalid action. Worked only  -start, -stop , -kill , -list these commands."
}
