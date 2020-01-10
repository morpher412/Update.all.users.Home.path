Get-ADUser -Filter *| 
Foreach-Object{
    $sam = $_.SamAccountName
    Set-ADuser -Identity $_ -HomeDrive "U:" -HomeDirectory "\\fileserver\users\$sam"}