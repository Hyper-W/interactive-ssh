Get-Content ~\.ssh\config |  Select-String -Pattern "^Host " | Select-String -NotMatch "github" | foreach-object{ $_ -Replace "Host " , ""}| Out-String -Stream | Select-String '.*' | Select-Object LineNumber, Line | Format-Table
$SSH_HOSTS = Get-Content ~\.ssh\config |  Select-String -Pattern "^Host " | Select-String -NotMatch "github" | foreach-object{ $_ -Replace "Host " , ""}
[int]$SSH_Num = Read-Host  "Select Connect Host Number"


if($SSH_HOSTS[$SSH_Num-1] -eq $null){
    Write-Output "An invalid value was entered."
    Read-Host "Please press any key."
    exit 1
}

$SSH_HOST=$SSH_HOSTS[$SSH_Num-1]

Write-Output "Connecting $SSH_HOST ..."
Start-Sleep 2
Clear-Host
ssh $SSH_HOST

exit 0