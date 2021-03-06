$Title = "Number of VMs per Datastore"
$Header =  "Number of VMs per Datastore over $NumVMsPerDatastore"
$Comments = "The Maximum number of VMs per datastore is 256, the following VMs are above the defined $NumVMsPerDatastore and may cause performance issues"
$Display = "Table"
$Author = "Alan Renouf"
$Version = 1.0

# Start of Settings 
# Max number of VMs per Datastore
$NumVMsPerDatastore =5
# End of Settings

@($Datastores | Select Name, @{N="NumVM";E={@($_ | Get-VM).Count}} | Where { $_.NumVM -gt $NumVMsPerDatastore} | Sort Name)
		
