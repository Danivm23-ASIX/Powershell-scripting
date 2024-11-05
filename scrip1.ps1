
$path = Read-Host "Posa la ruta on vols buscar"
$name = Read-Host "Posa el nom del fitxer o carpeta"

if (Test-Path $path) {
    $resultats = Get-ChildItem -Path $path -Recurse -Filter $name
    if ($resultats) {
        Write-Output "He trobat:"
        $resultats | ForEach-Object { $_.FullName }
    } else {
        Write-Output "No he trobat res."
    }
} else {
    Write-Output "La ruta no existeix."
}
