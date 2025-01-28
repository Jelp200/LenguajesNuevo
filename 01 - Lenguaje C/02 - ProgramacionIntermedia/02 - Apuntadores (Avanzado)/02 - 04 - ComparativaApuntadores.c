/*
** #########################################################################################
**      Archivo: 02 - 04 - ComparativaApuntadores.c
**      SO: Windows 10
**      Herramienta: Visual Studio Code
** #########################################################################################
*/

// DIRECTIVAS DE PREPROCESADOR
#include <stdio.h>

// FUNCIÓN
int suma(int a, int b){
    return a + b;
}

// FUYNCIÓN PRINCIPAL
int main(){
    int n = 10;         // Longitud del arreglo

    int arr[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    int* ptr;           // Declaración de la variable apuntador

    ptr = arr;          // El apuntador apunta al primer elemento del arreglo

    int count_even = 0;
    int count_odd = 0;

    for (int i = 0; i < n; i++) {
        if (*ptr % 2 == 0) 
            count_even++;
        if (*ptr % 2 != 0) 
            count_odd++;

        ptr++;          // Apuntando al siguiente elemento del arreglo
    }

    printf("El número de elementos pares en un arreglo es: %d", count_even);

    printf("\nEl número de elementos impares en un arreglo es: %d", count_odd);

    return 0;
}