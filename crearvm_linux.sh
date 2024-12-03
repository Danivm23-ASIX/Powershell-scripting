#!/bin/bash

VMName="MaquinaLinux"

# Crear la máquina virtual
VBoxManage createvm --name "$VMName" --register

# Configurar memoria y procesador
VBoxManage modifyvm "$VMName" --memory 1024 --cpus 1

# Añadir 8 adaptadores de red
for i in {1..8}; do
    VBoxManage modifyvm "$VMName" --nic$i nat
done

echo "Máquina virtual creada con 8 adaptadores de red. Configúrala como desees en VirtualBox."
