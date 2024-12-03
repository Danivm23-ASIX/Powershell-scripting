#!/bin/bash

VMName="MaquinaLinux"

# Crear la maquina virtual
VBoxManage createvm --name "$VMName" --register

# Configurar memoria y procesador
VBoxManage modifyvm "$VMName" --memory 1024 --cpus 1

# Añadir 8 adaptadores de red
for i in {1..8}; do
    VBoxManage modifyvm "$VMName" --nic$i nat
done

echo "Maquina virtual creada con 8 adaptadores de red. Configurala como desees en VirtualBox."
