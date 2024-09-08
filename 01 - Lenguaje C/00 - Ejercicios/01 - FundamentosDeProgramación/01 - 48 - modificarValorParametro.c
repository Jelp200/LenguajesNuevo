/*
** #########################################################################################
**  Archivo         :   01 - 48 - modificarValorParametro.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**                      Este programa muestra cómo el paso de parámetros por valor no
**                      modifica el valor original.
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>

// PROTOTIPO(S) DE FUNCION(ES)
void modificarValor(int n);

// FUNCION PRINCIPAL
int main(){
    int num = 10;
    printf("Antes de la funcion: %d\n", num);
    modificarValor(num);
    printf("Despues de la funcion: %d\n", num);
    return 0;
}

// FUNCION(ES)
void modificarValor(int n){
    n = 20;
    printf("Dentro de la funcion: %d\n", n);
}