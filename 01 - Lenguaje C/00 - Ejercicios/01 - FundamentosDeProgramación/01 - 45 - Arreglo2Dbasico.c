/*
** #########################################################################################
**  Archivo         :   01 - 45 - Arreglo2Dbasico.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**                      Realizar un programa que pida por teclado un número arreglo 2D de
**                      m x n elementos y lo mande a pantalla de forma matricial.
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>

// FUNCION PRINCIPAL
int main() {
    int filas, columnas;

    // Solicitar el número de filas
    printf("Ingrese el numero de filas: ");
    scanf("%d", &filas);

    // Solicitar el número de columnas
    printf("Ingrese el numero de columnas: ");
    scanf("%d", &columnas);

    // Declarar el arreglo bidimensional
    double arreglo[filas][columnas];

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

    return 0;
}
