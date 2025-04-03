@echo off
rem Crear un archivo de texto llamado mytext.txt con "Hola Mundo"
echo Creando archivo mytext.txt...
echo Hola Mundo > mytext.txt

rem Desplegar el contenido del archivo mytext.txt
echo Mostrando contenido de mytext.txt:
type mytext.txt
pause

rem Crear un subdirectorio llamado backup
echo Creando carpeta backup...
mkdir backup

rem Copiar el archivo mytext.txt al subdirectorio backup
echo Copiando mytext.txt a backup...
copy mytext.txt backup\
pause

rem Listar el contenido del subdirectorio backup
echo Contenido del directorio backup:
dir backup
pause

rem Eliminar el archivo mytext.txt del subdirectorio backup
echo Eliminando mytext.txt de backup...
del backup\mytext.txt
pause

rem Eliminar el subdirectorio backup
echo Eliminando la carpeta backup...
rmdir backup
pause