# Set-Location C:\
# Clear-Host 
# Get-Command *windowsfeature
# dism /online enable-feature

# Get-Service Docker
# Get-Command -noun Service
# Get-Service -Name AbtSvcHost

# Set-Service "AbtSvcHost" -DisplayName "Haha AbtSvcHost" -WhatIf

# Get-Service -Name RetailDemo
# Get-Command -Noun TimeZone
# Get-TimeZone
# Get-TimeZone "India Standard Time"
# Set-TimeZone -Id "India Standard Time" -WhatIf

Get-Command -Noun Archive

for ($i = 0; $i -lt 20; $i++) {
    New-Item C:\Temp\MyFakeLogFiles\Logfile_$i.log -Force
    New-Item C:\Temp\MyFakeLogFiles\Logfile_$i.txt -Force
}

Get-ChildItem C:\Temp\MyFakeLogFiles\* -Include *.log -Exclude *.txt | Compress-Archive -DestinationPath "C:\Temp\log.zip" 


Expand-Archive -Path C:\Temp\log.zip -DestinationPath C:\Temp\LogsOnly 

Get-ComputerInfo -Property windows*

Get-Uptime
