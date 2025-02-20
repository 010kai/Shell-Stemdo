$1 = Read-host "Escribe el primer numero"
$2 = Read-Host "Escribe el segundo numero"


$1 = [int32]$1
$2 = [int32]$2

$sum = $1+$2
$res = $1-$2
$mul = $1*$2
$di = $1/$2

write-host "Suma: $sum"
write-host "Resta: $res"
write-host "Multiplicacion: $mul"
write-host "Division: $di"