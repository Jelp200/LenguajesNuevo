/*
** #########################################################################################
**      Archivo: 19 - 02 - pasoDeValor.c
**      SO: Windows 10
**      Herramienta: Visual Studio Code
** #########################################################################################
*/

// DIRECTIVAS DE PREPROCESADOR
#include <stdio.h>

// FUNCION PRINCIPAL
int main(){
    // Declaramos nuestra variable
    int var = 13;

    //* Declaramos nuestra variable apuntador
    int *pVar;

    //* Asignamos la dirección de memoria de nuestra variable a nuestra variable apuntador
    pVar = &var;

    //* Imprimimos los datos de nuestra variable y nuestra variable apuntador

    printf("Dato variable: %i", var);
    printf("\nDato variable apuntador: %i", *pVar);

    printf("\nPosicion variable: %p", &var);
    printf("\nPosicion variable apuntador: %p", pVar);

    return 0;
}