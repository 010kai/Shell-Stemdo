$1 = read-host "Escribe el primer numero"
$2 = read-host "Escribe el segundo numero"

$1 = [int32]$1
$2 = [int32]$2

if ( $1 -gt $2 ) {
	Write-host "El numero $1 es mayor que $2"

} elseif ( $1 -lt $2 ){
	Write-host "El numero $1 es menor que $2"

} else {
	Write-Host "El numero $1 y $2 son iguales"

}