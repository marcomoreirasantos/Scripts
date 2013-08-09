## PowerShell in Practice
## by Richard Siddaway
## Listing 13.20
## Backup IIS configuration
###################################
$d = Get-Date
$folder = "PIP-IIS-Backup-$($d.Year)-$($d.Month)-$($d.Day)"
Backup-WebConfiguration -Name $folder