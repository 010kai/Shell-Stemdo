Import-Csv -Path "C:\Users\Administrador\Desktop\equipos.csv" | ForEach-Object {
New-ADOrganizationalUnit -Name $_.Ligas -Path $_.Path
}