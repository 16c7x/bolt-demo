Set-Service -Name wuauserv -StartupType Disabled
Uninstall-WindowsFeature -Name Windows-Defender
Restart-Computer -Force
