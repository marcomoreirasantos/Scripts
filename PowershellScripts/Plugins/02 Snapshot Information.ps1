$Title = "Snapshot Information"
$Header =  "Snapshots (Over $SnapshotAge Days Old) : $($snapshots.count)"
$Comments = "VMware snapshots which are kept for a long period of time may cause issues, filling up datastores and also may impact performance of the virtual machine."
$Display = "Table"
$Author = "Alan Renouf"
$Version = 1.0

# Start of Settings 
# Set the warning threshold for snapshots in days old
$SnapshotAge =14
# End of Settings

$Snapshots = @($VM | Get-Snapshot | Where {$_.Created -lt (($Date).AddDays(-$SnapshotAge))} | Select Created, VM, Name, Description, SizeMB)
$Snapshots
