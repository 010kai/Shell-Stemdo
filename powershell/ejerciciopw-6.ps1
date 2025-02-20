$num = Read-Host "Introduce un numero"

$num = [int32]$num

if ($num -gt 0) {

	for ($i = 0; $i -lt $num; $i++){
	Write-Host "Fap"
}
	}