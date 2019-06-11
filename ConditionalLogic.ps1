<#
#
#Author: Edward Perkins
#Contact: @cybercider
#Created: 2019-06-11
#Steal This Code!
#Conditional Logic
#>

#if is always trying to evaluate to true

if($true){Write-Host "hello"}

if ($thisIsNothing)
    {
        Write-Host "Something"
}
    elseif ($false) {
        Write-Host "Something else"
}
    else {
        Write-Host "Something other"
}

#be careful with operators like -contains, naturally it can only evaluate properly against objects, not strings, unless you do something like this (effectively creating an object by splitting):

$string = "This is a sentence."
$array = $string.Split()
if($array -contains "This"){
    Write-Host "Hello world this is reasonable."
}
else{
    Write-Host "Something else"
}