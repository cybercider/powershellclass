<#
#
#Author: Edward Perkins
#Contact: @cybercider
#Created: 2019-06-11
#Steal This Code!
#>

#Hash Tables (ordered dictionary example)
$Ed = [ordered]@{Shirt="Black";Pants="Jeans";Shoes="$TRUE"}
$Ed

#To add items, you have to recreate it
#HashTables require PS 3.0 minimum


#Changing the object type
$Ed = New-Object -TypeName psobject -Property $Ed
$Ed.GetType()

#Find out name, member type, definition
Get-Member -InputObject $Ed


#Using an array list, the size is determined by the size of the first item added. So make sure that all are same length, or at least the one with most items is first
$SomethingElse = New-Object -TypeName 'System.Collections.ArrayList'
$SomethingElse.Add($Ed)