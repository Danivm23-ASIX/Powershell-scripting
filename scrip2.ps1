
$origen = Read-Host "Posa la ruta de la carpeta a copiar"
$destinacio = Read-Host "Posa la ruta on vols guardar-la"

if (Test-Path $origen) {
    Copy-Item -Path $origen -Destination $destinacio -Recurse
    Write-Output "Còpia feta!"
} else {
    Write-Output "La carpeta no existeix."
}
