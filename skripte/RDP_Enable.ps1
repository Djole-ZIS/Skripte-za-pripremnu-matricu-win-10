$path ='HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server'
Set-ItemProperty $path -Name fDenyTSConnections -Type DWord -Value 0
Write-Host "RDP je uspesno omogucen"