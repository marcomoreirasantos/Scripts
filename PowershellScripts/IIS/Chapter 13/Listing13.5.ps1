## PowerShell in Practice
## by Richard Siddaway
## Listing 13.5
## Create a site with
##  the IIS cmdlet
###################################
New-WebSite -Name testcdlt -Port 80 -HostHeader "testcdlt.manticore.org" -PhysicalPath "c:\inetpub\testcdlt" 