/*
** #########################################################################################
**      Archivo: 10 - 03 - for.md
**      SO: Windows 10
**      Herramienta: Visual Studio Code
** #########################################################################################
*/
// DIRECTIVAS DE PREPROCESADOR
#include <stdio.h>

// FUNCIÓN PRINCIPAL
int main(void){
    // int i = 0;

    // Tambien podemos inicializar la variable dentro del ciclo.
    for (int i = 0; i <= 254; i++){
        printf("%c\n", i);                    // Imprime el código ASCII.
    }

    return 0;
}