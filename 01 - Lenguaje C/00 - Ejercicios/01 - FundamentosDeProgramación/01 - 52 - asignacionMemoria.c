/*
** #########################################################################################
**  Archivo         :   01 - 52 - asignacionMemoria.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**                      Este programa muestra cómo usar malloc para asignar memoria
**                      dinámicamente para un arreglo.
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>
#include <stdlib.h>

// FUNCION PRINCIPAL
int main(){
    int *arreglo;
    int tamano = 5;

    arreglo = (int *)malloc(tamano * sizeof(int));

    for (int i = 0; i < tamano; i++) {
        arreglo[i] = i * 10;
    }

    for (int i = 0; i < tamano; i++) {
        printf("Elemento %d: %d\n", i, arreglo[i]);
    }

    free(arreglo);
    return 0;
}