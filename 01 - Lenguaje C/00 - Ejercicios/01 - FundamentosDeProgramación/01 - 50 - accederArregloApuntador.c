/*
** #########################################################################################
**  Archivo         :   01 - 50 - accederArregloApuntador.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**                      Este programa muestra cómo acceder a los elementos de un arreglo
**                      utilizando un apuntador.
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>

// FUNCION PRINCIPAL
int main(){
    int arreglo[5] = {10, 20, 30, 40, 50};
    int *pArreglo = arreglo;

    for(int i = 0; i < 5; i++)
        printf("Elemento %d: %d\n",i , *(pArreglo + i));
    
    return 0;
}