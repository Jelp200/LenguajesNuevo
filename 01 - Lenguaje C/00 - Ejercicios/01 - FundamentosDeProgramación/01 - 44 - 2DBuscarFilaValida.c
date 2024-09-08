/*
** #########################################################################################
**  Archivo         :   01 - 44 - 2DBuscarFilaValida.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**                      Realizar un programa que pida por teclado un número arreglo 2D de
**                      valores con parte decimal y con rango de filas y/o columnas de [2.25]
**                      , en caso de cometer error al introducir el número de filas y
**                      columnas se deberán volver a pedir hasta que sean validas indicando
**                      el error correspondiente. Luego se pedirán uno a uno los valores del
**                      arreglo por teclado y se mostrará al final en forma matricial.
**                      Posteriormente se pedirá el subíndice de una fila válida dentro del
**                      rango manejado por el usuario y se mostrará esa fila, si la fila
**                      solicitada no fuera correcta se pedirá hasta que sea valida,
**                      indicando el error.
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>

// FUNCION PRINCIPAL
int main() {
    int filas, columnas;
    double arreglo[25][25];

    // Solicitar número de filas y columnas
    do {
        printf("Ingrese el numero de filas (entre 2 y 25): ");
        scanf("%d", &filas);
        if (filas < 2 || filas > 25) {
            printf("Error: El uúmero de filas debe estar entre 2 y 25.\n");
        }
    } while (filas < 2 || filas > 25);

    do {
        printf("Ingrese el numero de columnas (entre 2 y 25): ");
        scanf("%d", &columnas);
        if (columnas < 2 || columnas > 25) {
            printf("Error: El numero de columnas debe estar entre 2 y 25.\n");
        }
    } while (columnas < 2 || columnas > 25);

    // Solicitar los valores del arreglo
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            printf("Ingrese el valor para arreglo[%d][%d]: ", i, j);
            scanf("%lf", &arreglo[i][j]);
        }
    }

    // Mostrar el arreglo en forma matricial
    printf("\nArreglo en forma matricial:\n");
    for (int i = 0; i < filas; i++) {
        for (int j = 0; j < columnas; j++) {
            printf("%6.2lf ", arreglo[i][j]);
        }
        printf("\n");
    }

    // Solicitar el subíndice de una fila válida
    int filaSolicitada;
    do{
        printf("Ingrese el subindice de una fila válida (entre 0 y %d): ", filas - 1);
        scanf("%d", &filaSolicitada);
        if (filaSolicitada < 0 || filaSolicitada >= filas) {
            printf("Error: Fila fuera de rango. Intentelo de nuevo.\n");
        }
    } while (filaSolicitada < 0 || filaSolicitada >= filas);

    // Mostrar la fila solicitada
    printf("\nFila %d:\n", filaSolicitada);
    for (int j = 0; j < columnas; j++) {
        printf("%6.2lf ", arreglo[filaSolicitada][j]);
    }
    printf("\n");

    return 0;
}
