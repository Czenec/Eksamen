# Define the target OU path
$targetOU = "OU=Brukere,DC=cybersecurityservices,DC=lan"  # Replace with your actual OU path

# Define the names of the OUs to be created
$ouNames = "Administrasjon", "Cloud Solutions", "Utviklingsavdeling"  # Replace with the desired OU names

# Create OUs
$ouNames | ForEach-Object {
    $ouPath = "OU=$_,$targetOU"
    try {
        New-ADOrganizationalUnit -Name $_ -Path $targetOU -ErrorAction Stop
        Write-Host "Created OU: $ouPath"
    }
    catch {
        Write-Host "Failed to create OU: $ouPath"
        Write-Host "Error: $_"
    }
}



# ---Felles---InitialPath

$AccountPassword = "Qwerty123"

$InitialPath = "OU=Brukere,DC=cybersecurityservices,DC=lan"

# ---HR---

$Path = "OU=Administrasjon,$InitialPath"

# - Brukere -

$GivenName = "Cain"
$Surname = "Roth"
$Name = "$GivenName $Surname"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force)`
-DisplayName $Name -Enabled 1 -GivenName $GivenName -Name $Name -ChangePasswordAtLogon 1 -Path $Path -UserPrincipalName $Name -Surname $Surname



$GivenName = "Randy"
$Surname = "Carpenter"
$Name = "$GivenName $Surname"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force)`
-DisplayName $Name -Enabled 1 -GivenName $GivenName -Name $Name -ChangePasswordAtLogon 1 -Path $Path -UserPrincipalName $Name -Surname $Surname






# ---Ledelse---

$Path = "OU=Cloud Solutions,$InitialPath"

# - Brukere -


$GivenName = "Jessica"
$Surname = "Hancock"
$Name = "$GivenName $Surname"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force)`
-DisplayName $Name -Enabled 1 -GivenName $GivenName -Name $Name -ChangePasswordAtLogon 1 -Path $Path -UserPrincipalName $Name -Surname $Surname



$GivenName = "Honor"
$Surname = "Manning"
$Name = "$GivenName $Surname"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force)`
-DisplayName $Name -Enabled 1 -GivenName $GivenName -Name $Name -ChangePasswordAtLogon 1 -Path $Path -UserPrincipalName $Name -Surname $Surname



$GivenName = "Anoushka"
$Surname = "Anthony"
$Name = "$GivenName $Surname"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force)`
-DisplayName $Name -Enabled 1 -GivenName $GivenName -Name $Name -ChangePasswordAtLogon 1 -Path $Path -UserPrincipalName $Name -Surname $Surname



$GivenName = "Fay"
$Surname = "Dyer"
$Name = "$GivenName $Surname"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force)`
-DisplayName $Name -Enabled 1 -GivenName $GivenName -Name $Name -ChangePasswordAtLogon 1 -Path $Path -UserPrincipalName $Name -Surname $Surname



$GivenName = "Elisa"
$Surname = "Chaney"
$Name = "$GivenName $Surname"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force)`
-DisplayName $Name -Enabled 1 -GivenName $GivenName -Name $Name -ChangePasswordAtLogon 1 -Path $Path -UserPrincipalName $Name -Surname $Surname



$GivenName = "Nelson"
$Surname = "Dennis"
$Name = "$GivenName $Surname"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force)`
-DisplayName $Name -Enabled 1 -GivenName $GivenName -Name $Name -ChangePasswordAtLogon 1 -Path $Path -UserPrincipalName $Name -Surname $Surname



$GivenName = "Abu"
$Surname = "Mccullough"
$Name = "$GivenName $Surname"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force)`
-DisplayName $Name -Enabled 1 -GivenName $GivenName -Name $Name -ChangePasswordAtLogon 1 -Path $Path -UserPrincipalName $Name -Surname $Surname



# ---Logistikk---

$Path = "OU=Utviklingsavdeling,$InitialPath"

# - Brukere -


$GivenName = "Aron"
$Surname = "Pace"
$Name = "$GivenName $Surname"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force)`
-DisplayName $Name -Enabled 1 -GivenName $GivenName -Name $Name -ChangePasswordAtLogon 1 -Path $Path -UserPrincipalName $Name -Surname $Surname



$GivenName = "Nora"
$Surname = "Odling"
$Name = "$GivenName $Surname"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force)`
-DisplayName $Name -Enabled 1 -GivenName $GivenName -Name $Name -ChangePasswordAtLogon 1 -Path $Path -UserPrincipalName $Name -Surname $Surname



$GivenName = "Zeeshan"
$Surname = "Maldonado"
$Name = "$GivenName $Surname"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force)`
-DisplayName $Name -Enabled 1 -GivenName $GivenName -Name $Name -ChangePasswordAtLogon 1 -Path $Path -UserPrincipalName $Name -Surname $Surname



$GivenName = "Colin"
$Surname = "Norton"
$Name = "$GivenName $Surname"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force)`
-DisplayName $Name -Enabled 1 -GivenName $GivenName -Name $Name -ChangePasswordAtLogon 1 -Path $Path -UserPrincipalName $Name -Surname $Surname



$GivenName = "Chr"
$Surname = "Lan"
$Name = "$GivenName $Surname"

New-ADUser -AccountPassword (convertto-securestring $AccountPassword -AsPlainText -force)`
-DisplayName $Name -Enabled 1 -GivenName $GivenName -Name $Name -ChangePasswordAtLogon 1 -Path $Path -UserPrincipalName $Name -Surname $Surname

