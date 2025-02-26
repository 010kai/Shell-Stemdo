$OU = "OU=Domain Controllers,DC=server,DC=local"
$Domain = "server.local"  # Reemplaza con tu dominio real
 
Import-Csv -Path "C:\Users\Administrador\Desktop\jugadores.csv" | ForEach-Object {
    $FullName = "$($_.FirstName) $($_.LastName)"
    # Definir los valores del usuario
    $SamAccountName = $_.UserName
    $UserPrincipalName = "$($_.UserName)@$Domain"
    $grp = $_.Club  # Asignar directamente el valor de $_.Club a $grp
 
    # Crear el usuario en Active Directory
    New-ADUser -Name $FullName `
               -DisplayName $FullName `
               -SamAccountName $SamAccountName `
               -UserPrincipalName $UserPrincipalName `
               -Path $OU `
               -AccountPassword (ConvertTo-SecureString 'Password123' -AsPlainText -Force) `
               -Enabled $true `
               -ChangePasswordAtLogon $true
 
    # Verificar si el grupo ya existe antes de crearlo
    $Group = Get-ADGroup -Filter {Name -eq $grp} -ErrorAction SilentlyContinue
    if (-not $Group) {
        # Si el grupo no existe, crearlo
        New-ADGroup -Name $grp `
                    -GroupScope Global `
                    -GroupCategory Security `
                    -Path $OU `
                    -Description "Grupo para $grp"
        Write-Host "Grupo '$grp' creado exitosamente."
    } else {
        Write-Host "El grupo '$grp' ya existe."
    }
 
    # Agregar el usuario al grupo correspondiente
    Add-ADGroupMember -Identity $grp -Members $SamAccountName
}