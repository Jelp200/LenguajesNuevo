/*
** #########################################################################################
**  Archivo         :   01 - 51 - arregloFuncion.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**                      Este programa muestra cómo pasar un arreglo a una función utilizando
**                      un apuntador.
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>

// PROTOTIPO(S) DE FUNCION(ES)
void imprimirArreglo(int *arr, int tamanho);

// FUNCION PRINCIPAL
int main(){
    int arreglo[5] = {10, 20, 30, 40, 50}; 
    imprimirArreglo(arreglo, 5);
    return 0;
}

// FUNCION(ES)
void imprimirArreglo(int *arr, int tamanho){
    for(int i = 0; i < tamanho; i++)
        printf("Elemento %d: %d\n", i, arr[i]);
}