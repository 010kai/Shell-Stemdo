$err = 0

while ($true){

$num = [int32](Read-Host "Introduce un numero entre 1 y 100")

if ($num -ge 1 -and $num -le 100){
break
}else{
$err++
write-host "numero fuero de rango, Intenta nuevamente."
}
}

if ($err -eq 0) {
Write-host "¡Campeon!"
}else {
Write-Host "Has cometido $err errores. Aprende a leer"}