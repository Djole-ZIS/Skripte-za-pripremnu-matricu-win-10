$path ='HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer'
Set-ItemProperty $path -Name NoDriveTypeAutorun -Type DWord -Value 0xFF
Write-Host "          Autorun uspesno onemogucen"

Start-Sleep -Seconds 2

netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes
Write-Host "
          File and Printer Sharing je omoguceno"

Start-Sleep -Seconds 2

netsh advfirewall firewall set rule group="Network Discovery" new enable=Yes
Write-Host "
          Network Discovery je omoguceno"

Start-Sleep -Seconds 2

powercfg /HIBERNATE off
Write-Host "
          Hibernacija je iskljucena"

Start-Sleep -Seconds 2

Powercfg /Change monitor-timeout-ac 15
Write-Host "
          Monitor ce spavati posle 15 minuta"

Start-Sleep -Seconds 2

netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol="icmpv4:8,any" dir=in action=allow
Write-Host "
          Ping ICMP V4 je omogucen"

Start-Sleep -Seconds 2

netsh advfirewall firewall add rule name="ICMP Allow incoming V6 echo request" protocol="icmpv6:8,any" dir=in action=allow
Write-Host "
          Ping ICMP V6 je omogucen"

Start-Sleep -Seconds 2

Powercfg /Change standby-timeout-ac 60
Write-Host "
          Racunar ce spavati posle 60 minuta"

Start-Sleep -Seconds 2

$path ='HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server'
Set-ItemProperty $path -Name fDenyTSConnections -Type DWord -Value 0
Write-Host "
          RDP je uspesno omogucen"