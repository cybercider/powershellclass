<#
#
#Author: Edward Perkins
#Contact: @cybercider
#Created: 2019-06-13
#Steal This Code!
#PS-Remoting
you can configure a settings file (see the JEA example) that instructs powershell what a standard user can and can't do (administratively or otherwise)
#Default authentication if none if provided is SSO
So you can run a session as an admin
you don't want to pass creds to kerberos (in PSSessions)
If you remote to a hacked computer without credentials they are protected, but if you pass creds they can be compromised.
JEAConfiguration (just enough administration)
Transcript logging (goes into files) and will show information for the entire PSSession (other loggin ends up in PS event log, but doesn't log output, only the block executed)
git-hub.com/powershell/jea
#>

#PSSesssions
Enter-PSSession -ConfigurationName JEA -ComputerName SRV2

New-PSSession -ComputerName "client02" -Credential $(Get-Credential)
Enter-PSSession -ComputerName "client02" -Credential $(Get-Credential)
Exit-PSHostProcess
Remove-PSSession -id 2

#Invoking Commands on remote computers
Invoke-Command -ComputerName "client02" -ScriptBlock {get-hotfix} -Credential $(Get-Credential) -AsJob #the as job makes it multi threaded
Get-Job #quick and dirty status check on the job
Get-Job | Receive-Job #if theres only one it will show the data for the job
get-job | Where-Object {$._location -eq "client02"} | Receive-Job #if running on more than one client, this will get the data for the job on the location (computer) specified.
Remove-Job #get rid of the job