[int]$vreme = Read-Host 'Unesite vreme posle kog monitor spava'
Powercfg /Change monitor-timeout-ac $vreme
Write-Host "Monitor ce spavati posle 15 minuta"