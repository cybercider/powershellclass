<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    PingIt
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '903,598'
$Form.TopMost                    = $false

$TextBoxIP                       = New-Object system.Windows.Forms.TextBox
$TextBoxIP.multiline             = $false
$TextBoxIP.width                 = 100
$TextBoxIP.height                = 20
$TextBoxIP.location              = New-Object System.Drawing.Point(27,22)
$TextBoxIP.Font                  = 'Microsoft Sans Serif,10'

$LabelIP                         = New-Object system.Windows.Forms.Label
$LabelIP.text                    = "Name"
$LabelIP.AutoSize                = $true
$LabelIP.width                   = 25
$LabelIP.height                  = 10
$LabelIP.location                = New-Object System.Drawing.Point(148,32)
$LabelIP.Font                    = 'Microsoft Sans Serif,10'

$ButtonPing                      = New-Object system.Windows.Forms.Button
$ButtonPing.text                 = "Ping"
$ButtonPing.width                = 60
$ButtonPing.height               = 30
$ButtonPing.location             = New-Object System.Drawing.Point(578,551)
$ButtonPing.Font                 = 'Microsoft Sans Serif,10'

$ButtonClear                     = New-Object system.Windows.Forms.Button
$ButtonClear.text                = "Clear"
$ButtonClear.width               = 60
$ButtonClear.height              = 30
$ButtonClear.location            = New-Object System.Drawing.Point(660,550)
$ButtonClear.Font                = 'Microsoft Sans Serif,10'

$ButtonClose                     = New-Object system.Windows.Forms.Button
$ButtonClose.text                = "Close"
$ButtonClose.width               = 60
$ButtonClose.height              = 30
$ButtonClose.location            = New-Object System.Drawing.Point(743,550)
$ButtonClose.Font                = 'Microsoft Sans Serif,10'

$Form.controls.AddRange(@($TextBoxIP,$LabelIP,$ButtonPing,$ButtonClear,$ButtonClose))

$ButtonPing.Add_Click({ ButtonPingClick })
$ButtonClear.Add_Click({ ButtonClearClick })
$ButtonClose.Add_Click({ ButtonCloseClick })

function ButtonPIngClick {
    Ping TextBoxPing.text | Write-Output
}

#Write your logic code here

[void]$Form.ShowDialog()

