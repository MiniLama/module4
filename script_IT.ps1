Import-Module ActiveDirectory

for ($i = 1; $i -le 5; $i++) {
    $name = ("IT_" + $i)
    $Path = "OU=IT, DC=nsgk, DC=ru"
    $pass = ConvertTo-SecureString("P@ssw0rd" + "$i") -AsPlainText -Force
    New-ADuser -Name $name `
                -Path $Path `
                -UserPrincipalName $name@nsgk.ru `
                -SamAccountName $name `
                -AccountPassword $pass `
                -Enabled $true `
                -CannotChangePassword $true
    Add-ADGroupMember -identity IT -Members $name 
}