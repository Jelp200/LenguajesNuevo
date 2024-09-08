/*
** #########################################################################################
**  Archivo         :   01 - 53 - dobleApuntador.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**                     Este programa muestra cómo utilizar un doble apuntador para modificar
**                      un valor.
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>

// PROTOTIPO(S) DE FUNCION(ES)
void modificarValor(int **pp);

// FUNCION PRINCIPAL
int main(){
    int numero = 10;
    int *pNumero = &numero;
    
    modificarValor(&pNumero);
    printf("Valor después de modificar: %d\n", *pNumero);

    return 0;
}

// FUNCION(ES)
void modificarValor(int **pp) {
    **pp = 20;
}