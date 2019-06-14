<#
#
#Author: Edward Perkins
#Contact: @cybercider
#Created: 2019-06-14
#Steal This Code!
Functions
noun-verb
#>

#simple
function get-something {

}

#advanced is adding cmdletbinding
function get-other {
    [CmdletBinding()]
    param()
}

#function in action use get-verb to find out what verbs you can use.
function write-something {
    param(
        [parameter(HelpMessage = "This is what we write to the screen" , Mandatory = $true)]
        [string]$Message,
        [parameter(HelpMessage = "Repeat this a set number of times")]
        [int32]$RepeatCount
}
    )
for($i=0;$i -le $RepeatCount;$i++){
    Write-Verbose -Message "$($Message)" -Verbose
    }
write-something -Message "Hello World"