#!/bin/bash

while true; do
  echo ""
  echo "===== MENÚ DE SERVICIOS ====="
  echo "1) Listar el contenido de una carpeta"
  echo "2) Crear un archivo de texto con una línea de texto"
  echo "3) Comparar dos archivos de texto"
  echo "4) Mostrar uso de AWK"
  echo "5) Mostrar uso de GREP"
  echo "6) Salir"
  echo "=============================="
  read -p "Selecciona una opción [1-6]: " opcion

  case $opcion in
    1)
      read -p "Introduce la ruta absoluta de la carpeta: " ruta
      if [ -d "$ruta" ]; then
        echo "Contenido de $ruta:"
        ls "$ruta"
      else
        echo "La ruta no es válida o no es un directorio."
      fi
      ;;
    2)
      read -p "Introduce el nombre del archivo (con ruta si deseas): " archivo
      read -p "Introduce el texto a guardar: " texto
      echo "$texto" > "$archivo"
      echo "Archivo creado exitosamente: $archivo"
      ;;
    3)
      read -p "Ruta del primer archivo: " archivo1
      read -p "Ruta del segundo archivo: " archivo2
      if [ -f "$archivo1" ] && [ -f "$archivo2" ]; then
        echo "Comparando archivos..."
        diff "$archivo1" "$archivo2"
      else
        echo "Uno o ambos archivos no existen."
      fi
      ;;
    4)
      echo "Ejemplo de uso de AWK:"
      echo "Mostrando segunda columna de /etc/passwd (nombres de usuario):"
      awk -F: '{print $1}' /etc/passwd | head -10
      ;;
    5)
      read -p "Introduce un término a buscar con grep: " termino
      read -p "Introduce el archivo donde buscar: " archivo
      if [ -f "$archivo" ]; then
        echo "Resultados de búsqueda:"
        grep "$termino" "$archivo"
      else
        echo "El archivo no existe."
      fi
      ;;
    6)
      echo "Saliendo del menú. ¡Hasta luego!"
      break
      ;;
    *)
      echo "Opción no válida. Intenta de nuevo."
      ;;
  esac
done
