

# Nombre de la máquina virtual
$VMName = "MaquinaSimple"

# Crear la máquina virtual
VBoxManage createvm --name $VMName --register

# Configurar memoria y procesador
VBoxManage modifyvm $VMName --memory 1024 --cpus 1

# Añadir 8 adaptadores de red
for ($i = 1; $i -le 8; $i++) {
    VBoxManage modifyvm $VMName --nic$i nat
}

Write-Host "Máquina virtual creada con 8 adaptadores de red. Configúrala como desees en VirtualBox."
