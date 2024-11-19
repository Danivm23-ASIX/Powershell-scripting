#!/bin/bash

# Demanar la ruta del fitxer ISO
read -p "Ruta del fitxer ISO: " iso_path

# Verificar si el fitxer ISO existeix
if [[ ! -f "$iso_path" ]]; then
    echo "El fitxer ISO no existeix."
    exit 1
fi

# Crear un punt de muntatge temporal
mount_point="/mnt/iso_temp"
mkdir -p "$mount_point"

# Muntar el fitxer ISO
mount -o loop "$iso_path" "$mount_point"

# Mostrar contingut del fitxer ISO
echo "Contingut del fitxer ISO:"
ls "$mount_point"

# Demanar el nom del fitxer a copiar
read -p "Nom del fitxer a copiar: " file_name

# Demanar la ruta de destí
read -p "Ruta de destí: " dest_path

# Copiar el fitxer
cp "$mount_point/$file_name" "$dest_path"

# Desmuntar el fitxer ISO
umount "$mount_point"
echo "ISO desmuntada i fitxer copiat."

# Eliminar el punt de muntatge temporal
rmdir "$mount_point"
