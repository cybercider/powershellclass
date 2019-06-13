<#
#
#Author: Edward Perkins
#Contact: @cybercider
#Created: 2019-06-13
#Steal This Code!
WebServices
Webservices integration. 8x% of systems have a webservice natively or a plugin.
Since it's a webpage, it will live in IIS
for instance, ConfigMgrWebService
the secret key is displayed at root 
looking in ConfigMgr.asmx  in the content area will show you everything you can do with it. http://localhost/configmgrwebservice/configmgr.asmx
Look up public webservices
Can be added to boot image (think get-adcomputer and cm computer objects for ZTI)
Clicking on the webservice module name gives you the URL which can be used
out-gridview
convertto-csv
convertto-html
Build own webservice Google MDT Web service sample
Something like below...close at least :)
#>

$URI = "http://www.dneonline.com/calculator.asmx"
$Web = New-WebServiceProxy -Uri $URI

$web | Get-Member

function Mathy-Edward{                      #Why doesn't it like this? WTF??? Unapproved Verb? Mathy??? Whatever PS lol
    # Parameter help description
    Param(
        $Number1,
        $Number2
    )
        $Number1
        $Number2
        Return $web.add($Number1,$Number2)
    }
    Mathy-Edward (1,2) -number1 1 -number2 2
