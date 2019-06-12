<#
#
#Author: Edward Perkins
#Contact: @cybercider
#Created: 2019-06-12
#Steal This Code!
#ForEach Loops
#>

#store get-service in variable $service
$service = Get-Service

#store $service variable in $xbox variable
$xbox = $service | Where-Object -Property Status -eq "Stopped" | Where-Object -Property Name -like "xbl*"
$xbox

#loop through the list
foreach ($something in $xbox){
    $something
    
    #go through everything
    Pause

    #start all of the services found
    Start-Service $something

}

$something