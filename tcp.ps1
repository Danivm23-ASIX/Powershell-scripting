# Configuració
$host = "google.com"    # Host a provar
$port = 80              # Port a provar

# Prova de connexió TCP
try {
    $connection = Test-NetConnection -ComputerName $host -Port $port
    if ($connection.TcpTestSucceeded) {
        Write-Host "La connexió TCP amb $host:$port funciona correctament!"
    } else {
        Write-Host "No s'ha pogut establir la connexió TCP amb $host:$port."
    }
} catch {
    Write-Host "S'ha produït un error durant la prova de connexió TCP."
}
