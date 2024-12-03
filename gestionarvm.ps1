# Gestión básica de máquinas virtuales en VirtualBox

# Nombre de la máquina virtual
$VMName = "MaquinaSimple"

# Menú de opciones
Write-Host "Selecciona una opción:"
Write-Host "1. Encender máquina virtual"
Write-Host "2. Guardar estado de la máquina virtual"
Write-Host "3. Apagar máquina virtual"
$opcion = Read-Host "Opción"

switch ($opcion) {
    1 {
        VBoxManage startvm $VMName --type headless
        Write-Host "Máquina virtual encendida."
    }
    2 {
        VBoxManage controlvm $VMName savestate
        Write-Host "Estado de la máquina virtual guardado."
    }
    3 {
        VBoxManage controlvm $VMName poweroff
        Write-Host "Máquina virtual apagada."
    }
    default {
        Write-Host "Opción no válida."
    }
}
