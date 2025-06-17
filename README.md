for ($i = 1; $i -le 5; $i++)

{

$itname =»"IT_" + $i

$itpass = "P@ssw0rd" + "$i"

$itdomen =» "nsgk.ru"

$itparam = ConvertTo-SecureString -String $itpass -AsPlainText -Force

New-ADUser -Name $itname  -Enabled $true -Path 'OU=IT,DC=nsgk, DC=ru' -AccountPassword $itparam -UserPrincipalName $itname@$itdomen

Add-ADGroupMember -Identity IT -Members $itname

$salesname =» "Sales_" + $i

$salespass = "P@ssw0rd" + "$i"
$salesdomen = "nsgk.ru"

$salesparam = ConvertTo-SecureString -String $salespass -AsPlainText -Force

New-ADUser -Name $salesname  -Enabled $true -Path 'OU=Sales,DC=nsgk, DC=ru' -AccountPassword $salesparam -UserPrincipalName $salesname@$salesdomen

Add-ADGroupMember -Identity Sales -Members $salesname

}
