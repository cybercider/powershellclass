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
Enter-PSSession -ConfigurationName JEA -ComputerName SRV2
