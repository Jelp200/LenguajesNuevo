/*
** #########################################################################################
**  Archivo         :   01 - 54 - apuntadorFuncion.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**                      Este programa muestra cómo pasar un apuntador a una función para
**                      modificar un arreglo.
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>

// PROTOTIPO(S) DE FUNCION(ES)
void llenarArreglo(int *arr, int tamano);

// FUNCION PRINCIPAL
int main(){
    int arreglo[5];
    llenarArreglo(arreglo, 5);

    for(int i = 0; i < 5; i++)
        printf("Elemento %d: %d\n", i, arreglo[i]);

    return 0;
}

// FUNCION(ES)
void llenarArreglo(int *arr, int tamano) {
    for(int i = 0; i < tamano; i++)
        arr[i] = i * 5;
}