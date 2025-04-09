#!/bin/bash

# Crear un archivo de texto plano llamado mytext y escribir "Hola Mundo"
echo "Hola Mundo" > mytext

# Imprimir el contenido del archivo mytext
echo "Contenido del archivo mytext:"
cat mytext

# Crear un directorio llamado backup
mkdir -p backup

# Mover el archivo mytext al directorio backup
mv mytext backup/

# Listar el contenido del directorio backup
echo "Contenido del directorio backup:"
ls backup

# Eliminar el archivo mytext del directorio backup
rm backup/mytext

# Eliminar el directorio backup
rmdir backup
