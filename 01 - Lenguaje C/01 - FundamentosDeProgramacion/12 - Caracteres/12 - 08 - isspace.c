/*
** #########################################################################################
**      Archivo: 12 - 02 - isdigit.c
**      SO: Windows 10
**      Herramienta: Visual Studio Code
** #########################################################################################
*/
// DIRECTIVAS DE PREPROCESADOR
#include <stdio.h>
#include <ctype.h>

// FUNCIÓN PRINCIPAL
int main() {
    char c = ' ';
    
    if (isspace(c)) {
        printf("El carácter es un espacio en blanco.\n");
    } else {
        printf("El carácter no es un espacio en blanco.\n");
    }
    
    return 0;
}