<#
#
#Author: Edward Perkins
#Contact: @cybercider
#Created: 2019-06-11
#Steal This Code!
#Date-Time
#>

#adding and removing days to get-date
$today=Get-Date
$yesterday=$today.AddDays(-1)
$yesterday
$tomorrow=$today.AddDays(1)
$tomorrow

#Show me files from the last 2 days, sort of
Get-ChildItem | ForEach-Object {if($_.LastWriteTime -gt $((Get-Date).AddDays(-2))){Write-Verbose -Message "$($_.Name)" -Verbose}}